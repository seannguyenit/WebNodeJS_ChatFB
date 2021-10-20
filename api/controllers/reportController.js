'use strict'

const util = require('util')
const mysql = require('mysql2')
const db = require('./../db')

module.exports = {
    report_general: (req, res) => {
        let sql = 'CALL report_general(?,?)'
        db.query(sql,[req.params.from,req.params.to], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },
    report_bill: (req, res) => {
        let sql = 'CALL report_bill(?,?,?)'
        db.query(sql,[req.params.from,req.params.to,req.params.stt], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },
    report_product: (req, res) => {
        let sql = 'CALL report_product(?,?)'
        db.query(sql,[req.params.from,req.params.to], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },
    report_individual: (req, res) => {
        let sql = 'CALL report_individual(?)'
        db.query(sql,[req.params.user_id], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    }
}