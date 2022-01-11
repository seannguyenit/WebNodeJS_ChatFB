'use strict'

const util = require('util')
const mysql = require('mysql')
const db = require('./../db')

module.exports = {
    // get_menu: (req, res) => {
    //     let sql = 'SELECT * from product'
    //     db.query(sql, (err, response) => {
    //         if (err) throw err
    //         res.json(response)
    //     })
    // },
    get_discount: (req, res) => {
        let sql = 'CALL discount_get(?)'
        db.query(sql, [req.params.product_id], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },
    store_discount: (req, res) => {
        insert_discount_f(req)
        res.json({ message: 'Insert success!' })
    },
    get: (req, res) => {
        let sql = 'CALL product_get_all()'
        db.query(sql, (err, response) => {
            if (err) throw err
            res.json(response)
        })
    },
    get_by_group: (req, res) => {
        let sql = 'CALL group_product_gel_all(?)'
        db.query(sql, [req.params.group_id], (err, response) => {
            if (err) throw err
            res.json(response)
        })
    },
    detail: (req, res) => {
        let sql = 'SELECT * from `product` where id = ?'
        db.query(sql, [req.params.id], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },
    update: (req, res) => {
        var data_p = req.body.data;
        let productId = req.params.id;
        let sql = 'call product_update(?,?,?,?,?,?);'
        db.query(sql, [productId, data_p.name, data_p.code, data_p.price, data_p.group_id, data_p.is_active], (err, response) => {
            if (err) throw err
            var uid = response[0][0].puid
            if (uid) {
                req.params.product_id = uid;
                insert_discount_f(req)
            }
            res.json({ message: 'Update success!' })
        })
    },
    store: (req, res) => {
        // let data = req.body;
        var data_p = req.body.data;
        let sql = 'call product_insert(?,?,?,?);'
        db.query(sql, [data_p.name, data_p.code, data_p.price, data_p.group_id], (err, response) => {
            if (err) throw err
            var uid = response[0][0].puid
            if (uid) {
                req.params.product_id = uid;
                insert_discount_f(req)
            }
            res.json({ message: 'Update success!' })
        })
    },
    delete: (req, res) => {
        let sql = 'DELETE FROM `product` WHERE id = ?'
        db.query(sql, [req.params.id], (err, response) => {
            if (err) throw err
            res.json({ message: 'Delete success!' })
        })
    },
    save_group_product: (req, res) => {
        let data = req.body;
        let sql = 'Call save_group_product(?,?)'
        db.query(sql, [data.product_id, data.group_id], (err, response) => {
            if (err) throw err
            res.json({ message: 'Save success!' })
        })
    },
}

function insert_discount_f(req) {
    if (!req.body.js_data) {
        return;
    }
    let sql = 'delete from discount where product_uid = ?'
    db.query(sql, [req.params.product_id], (err, response) => {
        if (err) throw err
    })
    let data = req.body.js_data.map(m => {
        return [m.from_value, m.to_value, m.percent, m.money, req.params.product_id, 1]
    })
    let sql1 = 'INSERT INTO discount (from_value, to_value,percent,money,product_uid,is_active) VALUES ?'
    db.query(sql1, [data], (err, response) => {
        if (err)
            throw err
    })
}
