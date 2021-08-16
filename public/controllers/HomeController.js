'use strict'
const path = require('path')

module.exports = {
    get_login_page: (req, res) => {
        res.sendFile(path.join(__dirname,'../../view/loginpage.html'))
    },
    get: (req, res) => {
        res.sendFile(path.join(__dirname,'../../view/adminPage.html'))
    },
    notice: (req, res) => {
        res.sendFile(path.join(__dirname,'../../view/notice.html'))
    },
    chat: (req, res) => {
        res.sendFile(path.join(__dirname,'../../view/chat.html'))
    },
    user: (req, res) => {
        res.sendFile(path.join(__dirname,'../../view/user.html'))
    },
    role_type: (req, res) => {
        res.sendFile(path.join(__dirname,'../../view/role.html'))
    },
    role_details: (req, res) => {
        res.sendFile(path.join(__dirname,'../../view/role_details.html'))
    },
    group: (req, res) => {
        res.sendFile(path.join(__dirname,'../../view/group.html'))
    },
    tag_name: (req, res) => {
        res.sendFile(path.join(__dirname,'../../view/tags_name.html'))
    },
    fast_reply: (req, res) => {
        res.sendFile(path.join(__dirname,'../../view/fast_reply.html'))
    },
    // get_partial: (req,res)=>{
    //     let action = [req.params.action];
    //     res.sendFile(path.join(__dirname,`../../view/partial/${action}.html`))
    // },
}