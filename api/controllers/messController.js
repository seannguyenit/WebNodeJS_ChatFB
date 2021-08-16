'use strict'

const util = require('util')
const mysql = require('mysql')
const db = require('./../db')

module.exports = {
    // get_menu: (req, res) => {
    //     let sql = 'SELECT * from chat_group_mess'
    //     db.query(sql, (err, response) => {
    //         if (err) throw err
    //         res.json(response)
    //     })
    // },
    get: (req, res) => {
        let sql = 'SELECT * from `chat_group_mess`'
        db.query(sql, (err, response) => {
            if (err) throw err
            res.json(response)
        })
    },
    detail: (req, res) => {
        let sql = 'SELECT * from `chat_group_mess` where id = ?'
        db.query(sql, [req.params.id], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },
    update: (req, res) => {
        let data = req.body;
        let chat_group_messId = req.params.id;
        let sql = 'UPDATE `chat_group_mess` SET ? WHERE id = ?'
        db.query(sql, [data, chat_group_messId], (err, response) => {
            if (err) throw err
            res.json({message: 'Update success!'})
        })
    },
    store: (req, res) => {
        let data = req.body;
        let sql = 'INSERT INTO `chat_group_mess` SET ?'
        db.query(sql, [data], (err, response) => {
            if (err) throw err
            res.json({message: 'Insert success!'})
        })
    },
    delete: (req, res) => {
        let sql = 'DELETE FROM `chat_group_mess` WHERE id = ?'
        db.query(sql, [req.params.id], (err, response) => {
            if (err) throw err
            res.json({message: 'Delete success!'})
        })
    },

    get_group: (req, res) => {
        let sql = 'CALL get_all_chat_group(0,?)'
        db.query(sql, [req.params.user_id], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },

    detail_group: (req, res) => {
        let sql = 'CALL get_all_chat_group(?,?)'
        db.query(sql, [req.params.group_id, req.params.user_id], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },

    get_chat_in_group: (req, res) => {
        let sql = 'SELECT * from `chat_group_mess` where chat_group_id = ? order by time'
        db.query(sql, [req.params.group_id], (err, response) => {
            if (err) throw err
            res.json(response)
        })
    },
    update_group: (req, res) => {
        let data = req.body;
        let chat_groupId = req.params.id;
        let sql = 'UPDATE `chat_group` SET ? WHERE id = ?'
        db.query(sql, [data, chat_groupId], (err, response) => {
            if (err) throw err
            res.json({message: 'Update success!'})
        })
    },
    store_group: (req, res) => {
        let data = req.body;
        let sql = 'INSERT INTO `chat_group` SET ?'
        db.query(sql, [data], (err, response) => {
            if (err) throw err
            res.json({message: 'Insert success!'})
        })
    },
    delete_group: (req, res) => {
        let sql = 'DELETE FROM `chat_group` WHERE id = ?'
        db.query(sql, [req.params.id], (err, response) => {
            if (err) throw err
            res.json({message: 'Delete success!'})
        })
    }
}