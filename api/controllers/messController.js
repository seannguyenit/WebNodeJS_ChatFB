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
        let sql = 'select CG.*,C.*,CG.id as CG_id,concat(if(length(A.bill_code)=0,A.`user`,A.bill_code),?,ifnull(GCC.next_stt,?)) as next_code from chat_group as CG left join `account` as A on CG.acc_receive = A.id left join `account` as A2 on CG.fb_acc_send = A2.fb_id left join customer as C on (C.id_fb = CG.cus_id or C.nick_fb = CG.cus_id) left join (select lpad(count(id)+1,4,0) as next_stt,B.created_by from bill as B group by B.created_by) as GCC on CG.acc_receive = GCC.created_by where (A.id = ? or A2.id = ? or ? = 0) and (CG.cus_id = ? or C.nick_fb = ?);'
        db.query(sql, ['-', '0001', Number(req.params.user_id), Number(req.params.user_id), Number(req.params.user_id), req.params.cus_id, req.params.cus_id], (err, response) => {
            if (err) throw err
            res.json(response)
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
        let sql = 'SELECT * FROM `chat_group_mess` AS CGM where CGM.cus_id = ? and CGM.acc_receive = ? order by mess_index desc limit 1;'
        db.query(sql, [req.params.cus_id, Number(req.params.acc_receive)], (err, response) => {
            if (err) throw err
            res.json(response)
        })
    },

    get_chat_in_group: (req, res) => {
        if (req.params.limit == 0) {
            let sql = 'SELECT CGM.*,A.avatar_url as rec_ava,A.user as rec_user,C.ava_url from `chat_group_mess` as CGM left join chat_group AS CG on CG.cus_id = CGM.cus_id left join customer AS C on C.id_fb = CGM.cus_id left join `account` as A on CG.acc_receive = A.id where CGM.cus_id = ? and (? = 0 or CGM.mess_index > ?) order by CGM.mess_index desc,CGM.`order` desc;'
            db.query(sql, [req.params.cus_id, Number(req.params.max_id), Number(req.params.max_id)], (err, response) => {
                if (err) throw err
                res.json(response)
            })
        } else {
            let sql = 'SELECT CGM.*,A.avatar_url as rec_ava,A.user as rec_user,C.ava_url from `chat_group_mess` as CGM left join chat_group AS CG on CG.cus_id = CGM.cus_id left join customer AS C on C.id_fb = CGM.cus_id left join `account` as A on CG.acc_receive = A.id where CGM.cus_id = ? and (? = 0 or CGM.mess_index > ?) order by CGM.mess_index desc,CGM.`order` desc limit ?;'
            db.query(sql, [req.params.cus_id, Number(req.params.max_id), Number(req.params.max_id), Number(req.params.limit)], (err, response) => {
                if (err) throw err
                res.json(response)
            })
        }

    },
    //get_group_chat_tags_name
    get_group_chat_tags_name: (req, res) => {
        let data = req.params.ids.split(',').map(m => {
            return [m]
        });
        let sql = 'select GC.cus_id,GC.tags from `chat_group` as GC where GC.cus_id in (?);'
        db.query(sql, [data], (err, response) => {
            if (err) throw err
            res.json(response)
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
            if (str.indexOf(', ') > -1) {
                var time = str.split(', ')[0].split(' ')[1];
                var date = str.split(', ')[1];
                var hours = time.split(':')[0];
                var minutes = time.split(':')[1];
                var year = date.split('/')[2];
                var day = date.split('/')[0];
                var month = date.split('/')[1];
                return new Date(year, month, day, hours, minutes, 0, 0).toISOString();
            } else {
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