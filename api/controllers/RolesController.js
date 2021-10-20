'use strict'

const util = require('util')
const mysql = require('mysql2')
const db = require('./../db')

module.exports = {
    // get_menu: (req, res) => {
    //     let sql = 'SELECT * from role_type'
    //     db.query(sql, (err, response) => {
    //         if (err) throw err
    //         res.json(response)
    //     })
    // },
    get: (req, res) => {
        let sql = 'SELECT * from role_type'
        db.query(sql, (err, response) => {
            if (err) throw err
            res.json(response)
        })
    },
    detail: (req, res) => {
        let sql = 'SELECT * from role_type where id = ?'
        db.query(sql, [req.params.id], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },
    update: (req, res) => {
        let data = req.body;
        let role_typeId = req.params.id;
        let sql = 'UPDATE role_type SET ? WHERE id = ?'
        db.query(sql, [data, role_typeId], (err, response) => {
            if (err) throw err
            res.json({ message: 'Update success!' })
        })
    },
    store: (req, res) => {
        let data = req.body;
        let sql = 'INSERT INTO role_type SET ?'
        db.query(sql, [data], (err, response) => {
            if (err) throw err
            res.json({ message: 'Insert success!' })
        })
    },
    check_action: (req, res) => {
        var par = req.params.par == '0' ? '' : req.params.par;
        let sql = 'CALL check_menu_action(?,?)'
        db.query(sql, [req.params.role_id, par], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },
    get_permission: (req, res) => {
        let sql = 'CALL get_role_permision(?)'
        db.query(sql, [req.params.role_id], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },
    save_permission: (req, res) => {
        let data = JSON.stringify(req.body.js_data);
        let sql = 'call save_permission(?,?)'
        db.query(sql, [req.params.role_id, data], (err, response) => {
            if (err) throw err
            res.json({ message: 'Insert success!' })
        })
    },
    delete: (req, res) => {
        let sql = 'DELETE FROM role_type WHERE id = ?'
        db.query(sql, [req.params.id], (err, response) => {
            if (err) throw err
            res.json({ message: 'Delete success!' })
        })
    },
    get_menu_role: (req, res) => {
        let sql = 'SELECT * from menu_role'
        db.query(sql, (err, response) => {
            if (err) throw err
            res.json(response)
        })
    }
}