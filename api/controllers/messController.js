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
            res.json({ message: 'Update success!' })
        })
    },
    store: (req, res) => {
        let data = req.body;
        let sql = 'INSERT INTO `chat_group_mess` SET ?'
        db.query(sql, [data], (err, response) => {
            if (err) throw err
            res.json({ message: 'Insert success!' })
        })
    },
    delete: (req, res) => {
        let sql = 'DELETE FROM `chat_group_mess` WHERE id = ?'
        db.query(sql, [req.params.id], (err, response) => {
            if (err) throw err
            res.json({ message: 'Delete success!' })
        })
    },

    get_group: (req, res) => {
        let sql = 'Call get_all_chat_group(?,?)'
        db.query(sql, [req.params.user_id,req.params.cus_id], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },
    search_group: (req, res) => {
        let sql = 'Call search_group(?,?,?)'
        db.query(sql, [req.params.key,req.params.tag_id,req.params.user_id], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },
    get_group_by_user: (req, res) => {
        let sql = 'Call get_all_chat_group_by_user(?)'
        db.query(sql, [req.params.user_id], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },

    get_group_detail: (req, res) => {
        let sql = 'Call chat_group_get_details(?)'
        db.query(sql, [req.params.group_id], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },

    detail_group: (req, res) => {
        let data = req.body;
        let sql = 'CALL get_detail_group_mess(?,?,?,?,?,?)'
        db.query(sql, [data.user_id, data.cus_id, data.cus_name, data.send_id, data.send_name, data.cus_ava], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },
    
    get_latest_mess: (req, res) => {
        let sql = 'CALL get_latest_mess_saved(?,?)'
        db.query(sql, [req.params.cus_id,req.params.acc_receive], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },

    get_chat_in_group: (req, res) => {
        let sql = 'call get_chat(?,?)'
        db.query(sql, [req.params.cus_id,req.params.max_id], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },
    //get_group_chat_tags_name
    get_group_chat_tags_name: (req, res) => {
        let sql = 'CALL get_group_chat_tags_name(?)'
        db.query(sql, [req.params.ids], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },
    update_group: (req, res) => {
        let data = req.body;
        let sql = 'UPDATE `chat_group` SET ? WHERE cus_id = ? and acc_receive = ?'
        db.query(sql, [data, req.params.cus_id, req.params.user_id], (err, response) => {
            if (err) throw err
            res.json({ message: 'Update success!' })
        })
    },
    store_group: (req, res) => {
        let data = req.body;
        let sql = 'INSERT INTO `chat_group` SET ?'
        db.query(sql, [data], (err, response) => {
            if (err) throw err
            res.json({ message: 'Insert success!' })
        })
    },
    bill_checkout: (req, res) => {
        let data = JSON.stringify(req.body.js_data);
        let sql = 'Call bill_checkout(?,?,?,?,?,?)'
        db.query(sql, [req.params.cus_id, req.params.user_id, data, req.params.bill_code, req.params.trade_code, req.params.cmoney], (err, response) => {
            if (err) throw err
            res.json({ message: 'Insert success!' })
        })
    },
    delete_group: (req, res) => {
        let sql = 'DELETE FROM `chat_group` WHERE id = ?'
        db.query(sql, [req.params.id], (err, response) => {
            if (err) throw err
            res.json({ message: 'Delete success!' })
        })
    },
    sync_message: (req, res) => {
        let data = JSON.stringify(req.body.js_data);
        let sql = 'Call insert_messenger(?,?,?)'
        db.query(sql, [req.params.cus_id,req.params.acc_receive,data], (err, response) => {
            if (err) throw err
            res.json({ message: 'Insert success!' })
        })
    },
}