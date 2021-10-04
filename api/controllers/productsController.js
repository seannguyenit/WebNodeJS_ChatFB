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
        db.query(sql,[req.params.product_id], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },
    store_discount: (req, res) => {
        let data = req.body;
        let sql = 'Call discount_save(?,?)'
        db.query(sql, [req.params.product_id,data.js_data], (err, response) => {
            if (err) throw err
            res.json({message: 'Insert success!'})
        })
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
        db.query(sql,[req.params.group_id], (err, response) => {
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
        var data_d = JSON.stringify(req.body.js_data);
        let productId = req.params.id;
        let sql = 'call product_update(?,?,?,?,?,?,?);'
        db.query(sql, [productId,data_p.name,data_p.code,data_p.price,data_p.group_id,data_p.is_active,data_d], (err, response) => {
            if (err) throw err
            res.json({message: 'Update success!'})
        })
    },
    store: (req, res) => {
        // let data = req.body;
        var data_p = req.body.data;
        var data_d = JSON.stringify(req.body.js_data);
        let sql = 'call product_insert(?,?,?,?,?);'
        db.query(sql, [data_p.name,data_p.code,data_p.price,data_p.group_id,data_d], (err, response) => {
            if (err) throw err
            res.json({message: 'Insert success!'})
        })
    },
    delete: (req, res) => {
        let sql = 'DELETE FROM `product` WHERE id = ?'
        db.query(sql, [req.params.id], (err, response) => {
            if (err) throw err
            res.json({message: 'Delete success!'})
        })
    },
    save_group_product: (req, res) => {
        let data = req.body;
        let sql = 'Call save_group_product(?,?)'
        db.query(sql, [data.product_id,data.group_id], (err, response) => {
            if (err) throw err
            res.json({message: 'Save success!'})
        })
    },
}