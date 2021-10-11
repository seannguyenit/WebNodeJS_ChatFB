'use strict'

const util = require('util')
const mysql = require('mysql')
const db = require('./../db')
const helper = require('./helper');
// const session = require('express-session');

module.exports = {
    get: (req, res) => {
        let sql = 'CALL `account_getall`(0)'
        db.query(sql, (err, response) => {
            if (err) throw err
            res.json(response)
        })
    },
    get_same_group: (req, res) => {
        let sql = 'CALL `account_getall_same_group`(?)'
        db.query(sql, [req.params.user_id], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },
    get_group: (req, res) => {
        let group = req.params.group||0;
        let sql = 'CALL `account_getall`(0)'
        db.query(sql,[group], (err, response) => {
            if (err) throw err
            let new_res = helper.acc_filter_group(response[0],group);
            // console.log(new_res);
            res.json(new_res)
        })
    },
    detail: (req, res) => {
        let is_admin = req.params.is_admin||false;
        let sql = 'CALL `account_getdetail`(?)'
        db.query(sql, [req.params.id], (err, response) => {
            if (err) throw err
            var dt= response[0][0];
            // if(is_admin){
            //     dt.pass = dt.pass;
            // }else{

            // }
            res.json(dt);
        })
    },
    check_exist: (req, res) => {
        let sql = 'CALL `user_check_existed`(?,?,?,?)'
        db.query(sql, [req.params.id,req.params.username,req.params.role_id,req.params.group_id], (err, response) => {
            if (err) throw err
            var dt= response[0][0];
            // if(is_admin){
            //     dt.pass = dt.pass;
            // }else{

            // }
            res.json(dt);
        })
    },
    update: (req, res) => {
        let data = req.body;
        let accountId = req.params.id;
        let sql = 'UPDATE account SET ? WHERE id = ?'
        db.query(sql, [data, accountId], (err, response) => {
            if (err) throw err
            res.json({message: 'Update success!'})
        })
    },
    store: (req, res) => {
        let data = req.body;
        data.pass = data.pass;
        let sql = 'INSERT INTO account SET ?'
        db.query(sql, [data], (err, response) => {
            if (err) throw err
            res.json({message: 'Insert success!'})
        })
    },
    delete: (req, res) => {
        let sql = 'DELETE FROM account WHERE id = ?'
        db.query(sql, [req.params.id], (err, response) => {
            if (err) throw err
            res.json({message: 'Delete success!'})
        })
    },
    login: (req,res)=>{
        var er = '';
        let data = req.body;
        let sql = 'CALL `login`(?,?)'
        try {
            db.query(sql, [data.user,data.pass], (err, response) => {
                if (err) throw err
                // console.log(response);
                let dt = response[0][0];
                if(dt){
                    res.json({ok:1,data: response[0][0]});
                }else{
                    res.json({ok:0});
                }
            })
        } catch (error) {
            er = error;
        }
    },
    logout: (req,res)=>{
        let data = req.body;
        let sql = 'CALL `logout`(?,?)'
        try {
            db.query(sql, [data.user,data.token], (err, response) => {
                if (err) throw err
                // console.log(response);
                res.json({ok:1});
            })
        } catch (error) {
            er = error;
        }
    },
    get_menu: (req, res) => {
        let sql = 'CALL `get_menu`(?)'
        db.query(sql, [req.params.token], (err, response) => {
            if (err) throw err
            res.json(response)
        })
    },
}
