// const crypto = require('crypto');
// const util = require('util');
// // const db = require('./../db');

module.exports = {
    acc_filter_group: (lst_root, acc_id) => {
        let dt = [];
        let lst_par = [];
        lst_root.forEach(e => {
            if (e.created_by == acc_id) {
                dt.push(e);
                lst_par.push(e);
            }
        });
        while (lst_par.length > 0) {
            var lst_child = acc_get_by_parent(lst_root, lst_par);
            lst_child.forEach(e => {
                dt.push(e)
            });
            lst_par = lst_child;
        }
        return dt;
    }
}

function acc_get_by_parent(lst_root, lst_par) {
    let dt = [];
    lst_root.forEach(e => {
        if (lst_par.filter((ele, idx) => {
            return ele.id == e.created_by;
        }).length > 0) {
            dt.push(e);
        }
    });
    return dt;
}