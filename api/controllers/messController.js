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
    delete_chat_group: (req, res) => {
        let sql = 'Call delete_chat(?)'
        db.query(sql, [req.params.id], (err, response) => {
            if (err) throw err
            res.json({ message: 'Delete success!' })
        })
    },
    get_group: (req, res) => {
        let sql = 'Call get_all_chat_group(?,?)'
        db.query(sql, [req.params.user_id, req.params.cus_id], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },
    search_group: (req, res) => {
        let sql = 'Call search_group(?,?,?)'
        db.query(sql, [req.params.key, req.params.tag_id, req.params.user_id], (err, response) => {
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
        db.query(sql, [req.params.cus_id, req.params.acc_receive], (err, response) => {
            if (err) throw err
            res.json(response[0])
        })
    },

    get_chat_in_group: (req, res) => {
        let sql = 'call get_chat(?,?,?)'
        db.query(sql, [req.params.cus_id, req.params.max_id, req.params.limit], (err, response) => {
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
        let sql = 'Call bill_checkout(?,?,?,?,?)'
        db.query(sql, [req.params.cus_id, req.params.user_id, req.params.bill_code, req.params.trade_code, req.params.cmoney], (err, response) => {
            if (err) throw err
            var uid = response[0][0].uid
            if (uid) {
                let data = req.body.js_data.map(m => {
                    return [m.id, m.quantity, uid, m.price, 0]
                });
                let sql1 = 'INSERT INTO `bill_details`(`product_id`,`quantity`,`bill_uid`,price,ck) VALUES ?'
                db.query(sql1, [data], (err, response) => {
                    if (err) throw err
                    let sql2 = 'Call set_discount_to_bill(?)'
                    db.query(sql2, [uid], (err, response) => {
                        if (err) throw err
                    })
                })
            }
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
        // console.log(req.body.js_data);
        let data = req.body.js_data.map(m => {
            return [m.mes, m.mess_key, m.order, m.sender, req.params.cus_id, m.group_name, convert_to_datetime(m.group_time), m.img_src, m.file, m.mess_index, req.params.acc_receive]
        });
        let sql_insert_temp = 'INSERT INTO `chat_group_mess_temp`(`mess`,`mess_key`,`order`,`sender`,`cus_id`,`group_name`,`group_time`,img_src,`file`,mess_index,`acc_receive`) VALUES ?'
        db.query(sql_insert_temp, [data], (err, response) => {
            if (err) throw err
            let sql = 'Call insert_messenger(?,?)'
            db.query(sql, [req.params.cus_id, req.params.acc_receive], (err, response) => {
                if (err) throw err
            })
            res.json({ message: 'Insert success!' })
        })

    },
}

function convert_to_datetime(str) {
    try {
        if (!str) {
            return str;
        } else {
            if(str.indexOf(', ') > -1){
                var time = str.split(', ')[0].split(' ')[1];
                var date = str.split(', ')[1];
                var hours = time.split(':')[0];
                var minutes = time.split(':')[1];
                var year = date.split('/')[2];
                var day = date.split('/')[0];
                var month = date.split('/')[1];
                return new Date(year, month, day, hours, minutes, 0, 0).toISOString();
            }else{
                var time = str.split(' ')[1];
                var date = str.split(' ')[0];
                var hours = time.split(':')[0];
                var minutes = time.split(':')[1];
                var year = date.split('-')[2];
                var day = date.split('-')[0];
                var month = date.split('-')[1];
                return new Date(year, month, day, hours, minutes, 0, 0).toISOString();
            }
        }
    } catch (error) {
        console.log(str)
    }

}