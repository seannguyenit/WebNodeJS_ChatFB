const express = require('express')
const app = express()
const bodyParser = require('body-parser')
const path = require('path')
const http = require('http');
var server = require('http').createServer(app);
var io = require('socket.io')(server);
var connected_user = [];
// const session = require('express-session');

require('dotenv').config
const port = process.env.PORT || 3000

app.use(bodyParser.urlencoded({ extended: true }))
app.use(bodyParser.json())

let routes = require('./api/routes') //importing route
let p_routes = require('./public/routes') //importing route
routes(app)
p_routes(app)

// app.use(function(req, res) {
//     res.status(404).send({url: req.originalUrl + ' not found'})
// })

app.use(express.static(path.join(__dirname, 'static')));

//Tạo socket 
io.on('connection', (socket) => {
    var id = socket.handshake.auth.id;
    console.log(`user ${id} connected`);
    connected_user.push({ id: id, token: socket.id });
    // console.log(connected_user);
    // io.emit('m', 'ok vo ne');
    socket.on('send', (data) => {
        var ids = data.user;
        var mess = data.mess;
        if (ids) {
            var lst_send = connected_user.filter((f)=>{return (ids.indexOf(`${f.id}`)>-1)});
            lst_send.forEach((r)=>{
                socket.to(r.token).emit("receive",mess);
            });
        }
    });
    socket.on('disconnect', () => {
        connected_user = connected_user.filter((f)=>{return f.token != socket.id});
        console.log('user disconnected');
    });
});

server.listen(port, () => {
    console.log('listening on *:3000');
});
// app.listen(port)

console.log('RESTful API server started on: ' + port)