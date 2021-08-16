const express = require('express')
const app = express()
const bodyParser = require('body-parser')
const path = require('path')
const http = require('http');
var server = require('http').createServer(app);
var io = require('socket.io')(server);
var connected_user = [];
// const session = require('express-session');
const PAGE_ACCESS_TOKEN = process.env.PAGE_ACCESS_TOKEN;
const SERVER_URL = process.env.SERVER_URL;
const APP_SECRET = process.env.APP_SECRET;

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

/* Hooker facebook */


// Serve the options path and set required headers
app.get('/options', (req, res, next) => {
    let referer = req.get('Referer');
    if (referer) {
        if (referer.indexOf('www.messenger.com') >= 0) {
            res.setHeader('X-Frame-Options', 'ALLOW-FROM https://www.messenger.com/');
        } else if (referer.indexOf('www.facebook.com') >= 0) {
            res.setHeader('X-Frame-Options', 'ALLOW-FROM https://www.facebook.com/');
        }
        res.sendFile('view/options.html', {root: __dirname});
    }
});

// Handle postback from webview
app.get('/optionspostback', (req, res) => {
    let body = req.query;
    let response = {
        "text": `Great, I will book you a ${body.bed} bed, with ${body.pillows} pillows and a ${body.view} view.`
    };

    res.status(200).send('Please close this window to return to the conversation thread.');
    callSendAPI(body.psid, response);
});

// Accepts POST requests at the /webhook endpoint
app.post('/webhook', (req, res) => {

    // Parse the request body from the POST
    let body = req.body;

    // Check the webhook event is from a Page subscription
    if (body.object === 'page') {

        body.entry.forEach(entry => {

            // Gets the body of the webhook event
            let webhook_event = entry.messaging[0];
            console.log(webhook_event);

            // Get the sender PSID
            let sender_psid = webhook_event.sender.id;
            console.log(`Sender PSID: ${sender_psid}`);

            // Check if the event is a message or postback and
            // pass the event to the appropriate handler function
            if (webhook_event.message) {
                handleMessage(sender_psid, webhook_event.message);
            } else if (webhook_event.postback) {
                handlePostback(sender_psid, webhook_event.postback);
            }

        });

        // Return a '200 OK' response to all events
        res.status(200).send('EVENT_RECEIVED');

    } else {
        // Return a '404 Not Found' if event is not from a page subscription
        res.sendStatus(404);
    }

});

// Accepts GET requests at the /webhook endpoint
app.get('/webhook', (req, res) => {

    const VERIFY_TOKEN = process.env.TOKEN;

    // Parse params from the webhook verification request
    let mode = req.query['hub.mode'];
    let token = req.query['hub.verify_token'];
    let challenge = req.query['hub.challenge'];

    // Check if a token and mode were sent
    if (mode && token) {

        // Check the mode and token sent are correct
        if (mode === 'subscribe' && token === VERIFY_TOKEN) {

            // Respond with 200 OK and challenge token from the request
            console.log('WEBHOOK_VERIFIED');
            res.status(200).send(challenge);

        } else {
            // Responds with '403 Forbidden' if verify tokens do not match
            res.sendStatus(403);
        }
    }
});


// Handles messages events
function handleMessage(sender_psid, received_message) {
    let response;

    // Checks if the message contains text
    if (received_message.text) {
        switch (received_message.text.replace(/[^\w\s]/gi, '').trim().toLowerCase()) {
            case "room preferences":
                response = setRoomPreferences(sender_psid);
                break;
            default:
                response = {
                    "text": `You sent the message: "${received_message.text}".`
                };
                break;
        }
    } else {
        response = {
            "text": `Sorry, I don't understand what you mean.`
        }
    }

    // Send the response message
    callSendAPI(sender_psid, response);
}

// Define the template and webview
function setRoomPreferences(sender_psid) {
    let response = {
        attachment: {
            type: "template",
            payload: {
                template_type: "button",
                text: "OK, let's set your room preferences so I won't need to ask for them in the future.",
                buttons: [{
                    type: "web_url",
                    url: SERVER_URL + "/options",
                    title: "Set preferences",
                    webview_height_ratio: "compact",
                    messenger_extensions: true
                }]
            }
        }
    };

    return response;
}

// Sends response messages via the Send API
function callSendAPI(sender_psid, response) {
    // Construct the message body
    let request_body = {
        "recipient": {
            "id": sender_psid
        },
        "message": response
    };
    console.log(request_body);
    // Send the HTTP request to the Messenger Platform
    request({
        "uri": "https://graph.facebook.com/v2.6/me/messages",
        "qs": {"access_token": PAGE_ACCESS_TOKEN},
        "method": "POST",
        "json": request_body
    }, (err, res, body) => {
        if (!err) {
            console.log('message sent!')
        } else {
            console.error("Unable to send message:" + err);
        }
    });
}

/* Hooker facebook End */