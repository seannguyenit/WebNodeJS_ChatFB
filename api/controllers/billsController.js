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
        let sql = 'select B.id, convert(B.time,nchar(20)) as `time`, bill_stt(B.stt) as `status`,B.stt, TB.total_bill, TB.ck, A1.user as created_by, G.name as group_name, A2.user as accepted, A3.user as accountant from(select BD.bill_uid,sum(BD.price*BD.quantity) as total_bill,sum(((BD.price*BD.quantity)/100)*BD.ck) as ck from bill_details AS BD group by BD.bill_uid) as TB left join bill as B on B.u_id = TB.bill_uid left join `account` as A1 on A1.id = B.created_by left join `account` as A2 on A2.id = B.accepted left join `account` as A3 on A3.id = B.accountant left join `account` as A4 on A4.id = B.reject left join `group` as G on G.id = A1.group_id where B.customer = ? or ? = ? order by B.time desc;'
        db.query(sql, [req.params.cus_id, Number(req.params.cus_id), Number(0)], (err, response) => {
            if (err) throw err
            res.json(response)
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
        let sql = 'call insert_moneycount(?,?,?)';
        db.query(sql, [data.bill_id, data.money, data.user_id], (err, response) => {
            if (err) throw err
            res.json({ message: 'Insert success!' })
        })
    },
    delete_money_count: (req, res) => {
        let sql = 'UPDATE `money_count` SET is_active = 0,del_by = ? WHERE id = ?'
        db.query(sql, [req.params.user_id, req.params.id], (err, response) => {
            if (err) throw err
            res.json({ message: 'Delete success!' })
        })
    }
}