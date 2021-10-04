'use strict'

const util = require('util')
const mysql = require('mysql')
const db = require('./../db')

module.exports = {
    // get_menu: (req, res) => {
    //     let sql = 'SELECT * from bill'
    //     db.query(sql, (err, response) => {
    //         if (err) throw err
    //         res.json(response)
    //     })
    // },
    get: (req, res) => {
        let sql = 'SELECT * from `bill`'
        db.query(sql, (err, response) => {
            if (err) throw err
            res.json(response)
        })
    },
    get_by_cus: (req, res) => {
        let sql = 'CALL get_bill(?)'
        db.query(sql, [req.params.cus_id], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },
    get_details: (req, res) => {
        let sql = 'CALL get_bill_detail(?)'
        db.query(sql, [req.params.bill_id], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },
    get_product_in_bill: (req, res) => {
        let sql = 'CALL bill_get_product_in_bill(?)'
        db.query(sql, [req.params.bill_id], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },
    set_stt: (req, res) => {
        let data = req.body;
        let sql = 'CALL set_bill_stt(?,?,?)'
        db.query(sql, [req.params.bill_id, data.stt, data.user_id], (err, response) => {
            if (err) throw err
            res.json({ message: 'Update success!' })
        })
    },
    get_by_group: (req, res) => {
        let sql = 'CALL get_bill_by_group(?)'
        db.query(sql, [req.params.group_id], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },
    detail: (req, res) => {
        let sql = 'SELECT * from `bill` where id = ?'
        db.query(sql, [req.params.id], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },
    update: (req, res) => {
        let data = req.body;
        let billId = req.params.id;
        let sql = 'UPDATE `bill` SET ? WHERE id = ?'
        db.query(sql, [data, billId], (err, response) => {
            if (err) throw err
            res.json({ message: 'Update success!' })
        })
    },
    store: (req, res) => {
        let data = req.body;
        let sql = 'INSERT INTO `bill` SET ?'
        db.query(sql, [data], (err, response) => {
            if (err) throw err
            res.json({ message: 'Insert success!' })
        })
    },
    delete: (req, res) => {
        let sql = 'DELETE FROM `bill` WHERE id = ?'
        db.query(sql, [req.params.id], (err, response) => {
            if (err) throw err
            res.json({ message: 'Delete success!' })
        })
    },
    get_money_count: (req, res) => {
        let sql = 'call get_money_count(?)'
        db.query(sql, [req.params.bill_id], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },
    store_money_count: (req, res) => {
        let data = req.body;
        let sql = 'INSERT INTO `money_count` SET ?'
        db.query(sql, [data], (err, response) => {
            if (err) throw err
            res.json({ message: 'Insert success!' })
        })
    },
    delete_money_count: (req, res) => {
        let sql = 'UPDATE `money_count` SET is_active = 0,del_by = ? WHERE id = ?'
        db.query(sql, [req.params.user_id,req.params.id], (err, response) => {
            if (err) throw err
            res.json({ message: 'Delete success!' })
        })
    }
}