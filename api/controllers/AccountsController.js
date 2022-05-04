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
        let sql = 'CALL `account_getall`(0)'
        db.query(sql, (err, response) => {
            if (err) throw err
            var users = response[0];
            var sl_u = users.find(f => { return f.id.toString() == req.params.user_id.toString() });
            var rs = users.filter(ft => {
                return (ft.group_id) && (sl_u.group_id) && ft.group_id.split(',').findIndex(fi => { return sl_u.group_id.split(',').findIndex(fi2 => { return fi2 = fi }) > -1 }) > -1
            })
            res.json(rs)
        })
    },
    get_group: (req, res) => {
        let group = req.params.group || 0;
        let sql = 'CALL `account_getall`(0)'
        db.query(sql, [group], (err, response) => {
            if (err) throw err
            let new_res = helper.acc_filter_group(response[0], group);
            // console.log(new_res);
            res.json(new_res)
        })
    },
    detail: (req, res) => {
        let is_admin = req.params.is_admin || false;
        let sql = 'CALL `account_getdetail`(?)'
        db.query(sql, [req.params.id], (err, response) => {
            if (err) throw err
            var dt = response[0][0];
            // if(is_admin){
            //     dt.pass = dt.pass;
            // }else{

            // }
            res.json(dt);
        })
    },
    check_exist: (req, res) => {
        let sql_user = 'select * from `account`'
        db.query(sql_user, (err, response) => {
            if (err) throw err
            var users = response;
            let sql_group = 'select * from `group`'
            db.query(sql_group, (err, response) => {
                if (err) throw err
                var groups = response;
                var ext = users.findIndex(f => { return f.id != req.params.id && f.user == req.params.username }) > -1 ? 1 : 0;
                var ext_role = 0;
                var lst_gr_param = req.params.group_id.split(',');
                lst_gr_param.forEach(it => {
                    var gr_selected = groups.find(fg => { return fg.id == it })
                    var select_role = (JSON.parse(gr_selected.role_limits || '[]')).find(f => { return f.id == req.params.role_id })
                    var count_cr_u = users.filter(ft => { return ft.id != req.params.id && ft.role == req.params.role_id && ft.group_id != null && (ft.group_id.split(',').findIndex(fig => { return fig == it }) > -1) }).length
                    if (select_role != null && count_cr_u >= select_role.value) {
                        ext_role = 1;
                    }
                });
                res.json({ existed: ext, over_limit: ext_role })
            })
        })
    },
    update: (req, res) => {
        let data = req.body;
        let accountId = req.params.id;
        let sql = 'UPDATE account SET ? WHERE id = ?'
        db.query(sql, [data, accountId], (err, response) => {
            if (err) throw err
            res.json({ message: 'Update success!' })
        })
    },
    store: (req, res) => {
        let data = req.body;
        data.pass = data.pass;
        let sql = 'INSERT INTO account SET ?'
        db.query(sql, [data], (err, response) => {
            if (err) throw err
            res.json({ message: 'Insert success!' })
        })
    },
    delete: (req, res) => {
        let sql = 'DELETE FROM account WHERE id = ?'
        db.query(sql, [req.params.id], (err, response) => {
            if (err) throw err
            res.json({ message: 'Delete success!' })
        })
    },
    login: (req, res) => {
        var er = '';
        let data = req.body;
        let sql = 'CALL `login`(?,?)'
        try {
            db.query(sql, [data.user, data.pass], (err, response) => {
                if (err) throw err
                // console.log(response);
                let dt = response[0][0];
                if (dt) {
                    res.json({ ok: 1, data: response[0][0] });
                } else {
                    res.json({ ok: 0 });
                }
            })
        } catch (error) {
            er = error;
        }
    },
    logout: (req, res) => {
        let data = req.body;
        let sql = 'CALL `logout`(?,?)'
        try {
            db.query(sql, [data.user, data.token], (err, response) => {
                if (err) throw err
                // console.log(response);
                res.json({ ok: 1 });
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
    get_acc_report: (req, res) => {
        let sql = 'CALL `get_acc_report`(?)'
        db.query(sql,[req.params.id], (err, response) => {
            if (err) throw err
            res.json(response)
        })
    },
    get_menu_report: (req, res) => {
        let sql = 'CALL `get_menu_report`(?)'
        db.query(sql,[req.params.id], (err, response) => {
            if (err) throw err
            res.json(response)
        })
    },
}
