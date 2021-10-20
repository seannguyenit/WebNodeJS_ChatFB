'use strict'

const util = require('util')
const mysql = require('mysql2')
const db = require('./../db')
const helper = require('./helper');
// const session = require('express-session');

module.exports = {
    get_tag_name: (req, res) => {
        let sql = 'SELECT * from tag_name'
        db.query(sql, (err, response) => {
            if (err) throw err
            res.json(response)
        })
    },
    detail_tag_name: (req, res) => {
        let sql = 'SELECT * from tag_name where id = ?'
        db.query(sql, [req.params.id], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },
    update_tag_name: (req, res) => {
        let data = req.body;
        let tag_nameId = req.params.id;
        let sql = 'UPDATE tag_name SET ? WHERE id = ?'
        db.query(sql, [data, tag_nameId], (err, response) => {
            if (err) throw err
            res.json({message: 'Update success!'})
        })
    },
    store_tag_name: (req, res) => {
        let data = req.body;
        let sql = 'INSERT INTO tag_name SET ?'
        db.query(sql, [data], (err, response) => {
            if (err) throw err
            res.json({message: 'Insert success!'})
        })
    },
    delete_tag_name: (req, res) => {
        let sql = 'DELETE FROM tag_name WHERE id = ?'
        db.query(sql, [req.params.id], (err, response) => {
            if (err) throw err
            res.json({message: 'Delete success!'})
        })
    }, 
    get_fast_reply: (req, res) => {
        let sql = 'SELECT * from fast_reply'
        db.query(sql, (err, response) => {
            if (err) throw err
            res.json(response)
        })
    },
    detail_fast_reply: (req, res) => {
        let sql = 'SELECT * from fast_reply where id = ?'
        db.query(sql, [req.params.id], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },
    update_fast_reply: (req, res) => {
        let data = req.body;
        let fast_replyId = req.params.id;
        let sql = 'UPDATE fast_reply SET ? WHERE id = ?'
        db.query(sql, [data, fast_replyId], (err, response) => {
            if (err) throw err
            res.json({message: 'Update success!'})
        })
    },
    store_fast_reply: (req, res) => {
        let data = req.body;
        let sql = 'INSERT INTO fast_reply SET ?'
        db.query(sql, [data], (err, response) => {
            if (err) throw err
            res.json({message: 'Insert success!'})
        })
    },
    delete_fast_reply: (req, res) => {
        let sql = 'DELETE FROM fast_reply WHERE id = ?'
        db.query(sql, [req.params.id], (err, response) => {
            if (err) throw err
            res.json({message: 'Delete success!'})
        })
    }, 
}