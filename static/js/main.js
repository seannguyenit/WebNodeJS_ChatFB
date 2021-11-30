'use strict'

// const { json } = require("body-parser");
// console.log('connected !');

function check_is_login() {
    try {
        let cr_u = JSON.parse(getCookie('user'));
        //alert(cr_u);
        if (cr_u.token != undefined) {
            return true;
        } else {
            return false;
        }
    } catch (error) {
        return false;
    }
}

async function set_cr_user(user) {
    if (user) {
        if (user.token) {
            setCookie('user', JSON.stringify(user));
        }
    }
}
function get_cr_user() {
    try {
        return JSON.parse(getCookie('user'));
    } catch (error) {
        return {};
    }
}
function check_current_admin() {
    var cr_u = get_cr_user();
    if(cr_u.id == 7) return true;
    else return false;
}
function allRow(dt, tbody, arrCol, no_active = false, add_more = [], has_panel = true) {
    for (var d = 0; d < dt.length; d++) {
        var dtr = dt[d];
        var ar = arrCol;
        var newRow = document.createElement('tr');
        for (var i = 0; i < ar.length; i++) {
            var v = ar[i];
            var newCol = document.createElement('td');
            newCol.innerText = dtr[v];
            newRow.appendChild(newCol);
        }
        newRow.appendChild(addActionPanel(has_panel, dtr, no_active, add_more));
        tbody.appendChild(newRow);
    }
    return tbody;
}

function addActionPanel(has_panel, dt, no_active = false, add_more = []) {
    var str = '';
    if (add_more) {
        add_more.forEach(e => {
            str += `<button class="btn btn-sm ${e.class} ml-1" onclick="${e.action}(${dt.role == undefined ? dt.id : dt.role},${dt.role == undefined ? 0 : dt.id})" data-action="del" data-id="${dt.id}">${e.title}</button>`;
        });
    }
    if (has_panel) {

        str += `<button class="btn btn-sm btn-primary ml-1" onclick="load_detail(${dt.id})" data-toggle="modal" data-target="#detailId" data-action="edit" data-id="${dt.id}">Sửa</button>`;
        if (!no_active) {
            str += `<button class="btn btn-sm btn-warning ml-1" data-action="active" onclick="change_active(${dt.is_active},${dt.id})" data-id="${dt.id}">Ẩn/Hiện</button>`;
        }
        str += `<button class="btn btn-sm btn-warning ml-1" onclick="del_acc(${dt.id})" data-action="del" data-id="${dt.id}">Xóa</button>`;
    }
    var newtd = document.createElement('td');
    newtd.innerHTML = str;
    return newtd;
}

function change_active(stt, id) {
    save_acc(stt, id);
    // if (confirm('')) {
    //   } else {
    //     // Do nothing!
    //     console.log('Thing was not saved to the database.');
    //   }
}


function validateField(v, n) {
    if (v == undefined || v == null || v.length == 0) {
        alert(`${n} chưa được chọn !`);
        return false;
    }
    return true;
}

function validateSelect(v, n) {
    if (v == undefined || v == null || v.length == 0 || v == 0) {
        alert(`${n} chưa được chọn !`);
        return false;
    }
    return true;
}


function covertTrueFalse(table_body, number_col, true_vl, false_vl) {
    for (var i = 0; i < table_body.children.length; i++) {
        var row = table_body.children[i];
        if (row.children.length > 0) {
            var td = row.children[number_col];
            td.innerText = (td.innerText === '1') ? true_vl : false_vl;
        }
    };
}

function covertBillStatus(table_body, number_col) {
    for (var i = 0; i < table_body.children.length; i++) {
        var row = table_body.children[i];
        if (row.children.length > 0) {
            var td = row.children[number_col];
            var te = td.innerText;
            switch (te) {
                case 'Mới':
                    td.style.backgroundColor = '';
                    break;
                case 'KẾ TOÁN DUYỆT':
                    td.style.backgroundColor = 'springgreen';
                    break;
                case 'KẾ TOÁN THU TIỀN':
                    td.style.backgroundColor = 'yellow';
                    break;
                case 'THỦ QUỸ THU TIỀN':
                    td.style.backgroundColor = 'green';
                    break;
                case 'HỦY':
                    td.style.backgroundColor = 'red';
                    break;
                default:
                    break;
            }
        }
    };
}

function covertHTMLcolor(table_body, number_col) {
    for (var i = 0; i < table_body.children.length; i++) {
        var row = table_body.children[i];
        if (row.children.length > 0) {
            var td = row.children[number_col];
            td.style.backgroundColor = td.innerText;
        }
    };
}


/*  call api method */

/* account */
async function acc_get_all() {
    return await fetch(`/api/accounts` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            return data;
        })
        .catch((error) => {
            console.warn(error);
            return undefined;
        });
}

async function acc_get_all_group(group = 0) {
    return await fetch(`/api/group/${group}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            return data;
        })
        .catch((error) => {
            console.warn(error);
            return undefined;
        });
}

async function acc_get_detail(id) {
    var cr_u = get_cr_user();
    return await fetch(`/api/accounts/${id}/${cr_u.role == 0}` /*, options */)
        .then((response) => response.json() || '')
        .then((data) => {
            if (data != undefined) {
                return data;
            }
        })
        .catch((error) => {
            console.warn(error);
        });
}

async function check_acc(id, username, role_id, group_id) {
    // var cr_u = get_cr_user();
    return await fetch(`/api/check_acc/${id}/${username}/${role_id}/${group_id}` /*, options */)
        .then((response) => response.json() || '')
        .then((data) => {
            if (data != undefined) {
                return data;
            }
        })
        .catch((error) => {
            console.warn(error);
        });
}

async function acc_save(url, data, meth) {
    return await fetch(url, {
        method: meth, // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(data)
    })
        .then(response => response.json())
        .then(result => {
            return result;
        })
        .catch(error => {
            console.error('Error:', error);
        });
}

async function acc_del(id) {
    var url = `/api/accounts/${id}`;
    var meth = 'DELETE';
    return await fetch(url, {
        method: meth, // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        }
    })
        .then(response => response.json())
        .then(result => {
            return result;
        })
        .catch(error => {
            console.error('Error:', error);
        });
}

async function acc_login(user, pass) {
    var url = `/api/login`;
    var data = { user: user, pass: pass };
    return await fetch(url, {
        method: 'POST', // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(data)
    })
        .then(response => response.json())
        .then(result => {
            return result;
        })
        .catch(error => {
            console.error('Error:', error);
        });
}
async function acc_logout() {
    //await check_authen();
    var user = get_cr_user('user');
    var url = `/api/logout`;
    var data = { user: user.id, token: user.token };
    let rs = await fetch(url, {
        method: 'POST', // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(data)
    })
        .then(response => response.json())
        .then(result => {
            return result;
        })
        .catch(error => {
            console.error('Error:', error);
        });
    document.cookie = "user=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
    location.href = '/';
}
/* account - end */

/* role_type */
async function role_type_get_all() {
    return await fetch(`/api/role_types` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            if (data != undefined) {
                return data;
            }
            //covertTrueFalse(tb, 6, 'Hiện', 'Ẩn');
        })
        .catch((error) => {
            console.warn(error);
        });
}


async function role_get_detail(id) {
    return await fetch(`/api/role_types/${id}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            return data;
        })
        .catch((error) => {
            console.warn(error);
        });
}

async function role_save(url, data, meth) {
    return await fetch(url, {
        method: meth, // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(data)
    })
        .then(response => response.json())
        .then(result => {
            return result;
        })
        .catch(error => {
            console.error('Error:', error);
        });
}

async function role_del(id) {
    var url = `/api/role_types/${id}`;
    var meth = 'DELETE';
    return await fetch(url, {
        method: meth, // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        }
    })
        .then(response => response.json())
        .then(result => {
            return result;
        })
        .catch(error => {
            console.error('Error:', error);
        });
}

async function role_get_all_template() {
    var url = `/api/menu_role`;
    return await fetch(url /*, options */)
        .then((response) => response.json())
        .then((data) => {
            if (data != undefined) {
                return data;
            }
            //covertTrueFalse(tb, 6, 'Hiện', 'Ẩn');
        })
        .catch((error) => {
            console.warn(error);
        });
}

/* role_type - end */

/* group */
async function group_get_all() {
    return await fetch(`/api/group` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            if (data != undefined) {
                return data;
            }
            //covertTrueFalse(tb, 6, 'Hiện', 'Ẩn');
        })
        .catch((error) => {
            console.warn(error);
        });
}


async function group_get_detail(id) {
    return await fetch(`/api/group/${id}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            return data;
        })
        .catch((error) => {
            console.warn(error);
        });
}

async function group_save(url, data, meth) {
    return await fetch(url, {
        method: meth, // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(data)
    })
        .then(response => response.json())
        .then(result => {
            return result;
        })
        .catch(error => {
            console.error('Error:', error);
        });
}

async function group_del(id) {
    var url = `/api/group/${id}`;
    var meth = 'DELETE';
    return await fetch(url, {
        method: meth, // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        }
    })
        .then(response => response.json())
        .then(result => {
            return result;
        })
        .catch(error => {
            console.error('Error:', error);
        });
}

/* group - end */

/* chat_group
 */
async function chat_group_get_all(user_id) {
    if (user_id == 0) {
        var cr_u = get_cr_user();
        user_id = cr_u.id;
    }
    return await fetch(`/api/mess_group/${user_id}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            if (data != undefined) {
                return data;
            }
            //covertTrueFalse(tb, 6, 'Hiện', 'Ẩn');
        })
        .catch((error) => {
            console.warn(error);
        });
}

async function chat_group_get_detail(id) {
    return await fetch(`/api/mess_group_details/${id}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            if (data != undefined) {
                return data[0];
            }
            //covertTrueFalse(tb, 6, 'Hiện', 'Ẩn');
        })
        .catch((error) => {
            console.warn(error);
        });
}

async function chat_group_get_all_chat(cus_id, max_id = 0, limit = 0) {
    return await fetch(`/api/mess_chat/${cus_id}/${max_id}/${limit}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            if (data != undefined) {
                // var rs_ = data.sort((a,b)=>{return a.mess_index - b.mess_index});
                return data;
            }
            //covertTrueFalse(tb, 6, 'Hiện', 'Ẩn');
        })
        .catch((error) => {
            console.warn(error);
        });
}

async function get_all_bill(cus_id) {
    return await fetch(`/api/bill/${cus_id}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            return data;
        })
        .catch((error) => {
            console.warn(error);
        });
}

async function get_bill_details(id) {
    return await fetch(`/api/bill_details/${id}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            return data[0];
        })
        .catch((error) => {
            console.warn(error);
        });
}

async function get_bill_products(id) {
    return await fetch(`/api/bill_product/${id}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            return data;
        })
        .catch((error) => {
            console.warn(error);
        });
}

async function set_bill_stt(type, id, stt, note) {
    var cr_u = get_cr_user();
    let data = {};
    switch (type) {
        case 'huy':
            data.reject = cr_u.id;
            // data.reject_note = note;
            break;
        case 'kt1':
            data.accountant = cr_u.id;
            // data.accountant_note = note;
            break;
        case 'kt2':
            data.accountant = cr_u.id;
            // data.accountant_note = note;
            break;
        case 'tq':
            data.accepted = cr_u.id;
            // data.accepted_note = note;
            break;
        default:
            break;
    }
    data.stt = stt;
    return await fetch(`/api/bill_update/${id}`, {
        method: 'PUT', // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(data)
    })
        .then(response => response.json())
        .then(result => {
            return result;
        })
        .catch(error => {
            console.error('Error:', error);
        });
}

async function set_bill_note(type, id, note) {
    var cr_u = get_cr_user();
    let data = {};
    switch (type) {
        case 'huy':
            data.reject = cr_u.id;
            data.reject_note = note;
            break;
        case 'kt':
            data.accountant = cr_u.id;
            data.accountant_note = note;
            break;
        case 'tq':
            data.accepted = cr_u.id;
            data.accepted_note = note;
            break;
        default:
            break;
    }
    return await fetch(`/api/bill_update/${id}`, {
        method: 'PUT', // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(data)
    })
        .then(response => response.json())
        .then(result => {
            return result;
        })
        .catch(error => {
            console.error('Error:', error);
        });
}

async function cancel_bill(id, note) {
    var cr_u = get_cr_user();
    let data = {};
    data.reject = cr_u.id;
    data.reject_note = note;
    data.stt = -1;
    return await fetch(`/api/bill_update/${id}`, {
        method: 'PUT', // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(data)
    })
        .then(response => response.json())
        .then(result => {
            return result;
        })
        .catch(error => {
            console.error('Error:', error);
        });
}


async function get_all_money_count(bill_id) {
    return await fetch(`/api/money_count/${bill_id}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            return data;
        })
        .catch((error) => {
            console.warn(error);
        });
}

async function insert_money_count(bill_id, money) {
    var cr_u = get_cr_user();
    var data = {};
    data.bill_id = bill_id;
    data.money = money;
    data.user_id = cr_u.id;
    return await fetch(`/api/money_count`, {
        method: 'POST', // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(data)
    })
        .then(response => response.json())
        .then(result => {
            return result;
        })
        .catch(error => {
            console.error('Error:', error);
        });
}

async function del_money_count(id) {
    var cr_u = get_cr_user();
    return await fetch(`/api/money_count/${cr_u.id}/${id}`, {
        method: 'DELETE', // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        }
    })
        .then(response => response.json())
        .then(result => {
            return result;
        })
        .catch(error => {
            console.error('Error:', error);
        });
}

async function delete_chat_group(id) {
    // var cr_u = get_cr_user();
    var url = `/api/chat_group_delete/${id}`;
    var method = 'DELETE';
    return await fetch(url, {
        method: method, // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        }
    })
        .then(response => response.json())
        .then(result => {
            return result;
        })
        .catch(error => {
            console.error('Error:', error);
        });
}
/* chat_group - end
 */

/* tag_name */
async function tag_name_get_all() {
    return await fetch(`/api/tag_name` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            if (data != undefined) {
                return data;
            }
            //covertTrueFalse(tb, 6, 'Hiện', 'Ẩn');
        })
        .catch((error) => {
            console.warn(error);
        });
}


async function tag_name_get_detail(id) {
    return await fetch(`/api/tag_name/${id}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            return data;
        })
        .catch((error) => {
            console.warn(error);
        });
}

async function tag_name_save(url, data, meth) {
    return await fetch(url, {
        method: meth, // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(data)
    })
        .then(response => response.json())
        .then(result => {
            return result;
        })
        .catch(error => {
            console.error('Error:', error);
        });
}

async function tag_name_del(id) {
    var url = `/api/tag_name/${id}`;
    var meth = 'DELETE';
    return await fetch(url, {
        method: meth, // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        }
    })
        .then(response => response.json())
        .then(result => {
            return result;
        })
        .catch(error => {
            console.error('Error:', error);
        });
}
/* end tag_name end */

/* permission */

async function save_permission(role_id, data) {
    return await fetch(`/api/permission/${role_id}`, {
        method: "PUT", // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({ js_data: data })
    })
        .then(response => response.json())
        .then(result => {
            return result;
        })
        .catch(error => {
            console.error('Error:', error);
        });
}

async function load_role_permission(role_id) {
    return await fetch(`/api/permission/${role_id}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            if (data != undefined) {
                return data;
            }
            //covertTrueFalse(tb, 6, 'Hiện', 'Ẩn');
        })
        .catch((error) => {
            console.warn(error);
        });
}

async function check_permission(par) {
    var cr_u = get_cr_user();
    var role_id = cr_u.role;
    return await fetch(`/api/check_permission/${role_id}/${par}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            if (data != undefined) {
                return data;
            }
            //covertTrueFalse(tb, 6, 'Hiện', 'Ẩn');
        })
        .catch((error) => {
            console.warn(error);
        });
}

async function load_user_permission(id) {
    return await fetch(`/api/user_permission/${id}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            if (data != undefined) {
                return data;
            }
            //covertTrueFalse(tb, 6, 'Hiện', 'Ẩn');
        })
        .catch((error) => {
            console.warn(error);
        });
}
/* end permission */

/* fast_reply */
async function fast_reply_get_all() {
    return await fetch(`/api/fast_reply` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            if (data != undefined) {
                return data;
            }
            //covertTrueFalse(tb, 6, 'Hiện', 'Ẩn');
        })
        .catch((error) => {
            console.warn(error);
        });
}


async function fast_reply_get_detail(id) {
    return await fetch(`/api/fast_reply/${id}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            return data;
        })
        .catch((error) => {
            console.warn(error);
        });
}

async function fast_reply_save(url, data, meth) {
    return await fetch(url, {
        method: meth, // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(data)
    })
        .then(response => response.json())
        .then(result => {
            return result;
        })
        .catch(error => {
            console.error('Error:', error);
        });
}

async function fast_reply_del(id) {
    var url = `/api/fast_reply/${id}`;
    var meth = 'DELETE';
    return await fetch(url, {
        method: meth, // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        }
    })
        .then(response => response.json())
        .then(result => {
            return result;
        })
        .catch(error => {
            console.error('Error:', error);
        });
}
/* end fast_reply end */


/* product */

async function get_discount(product_id = 0) {
    return await fetch(`/api/discount/${product_id}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            if (data != undefined) {
                return data;
            }
            //covertTrueFalse(tb, 6, 'Hiện', 'Ẩn');
        })
        .catch((error) => {
            console.warn(error);
        });
}

async function discount_save(product_id, data) {
    return await fetch(`/api/discount/${product_id}`, {
        method: 'POST', // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({ js_data: data })
    })
        .then(response => response.json())
        .then(result => {
            return result;
        })
        .catch(error => {
            console.error('Error:', error);
        });
}

async function product_get_all() {
    return await fetch(`/api/product` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            if (data != undefined) {
                return data[0];
            }
            //covertTrueFalse(tb, 6, 'Hiện', 'Ẩn');
        })
        .catch((error) => {
            console.warn(error);
        });
}


async function product_get_detail(id) {
    return await fetch(`/api/product/${id}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            return data;
        })
        .catch((error) => {
            console.warn(error);
        });
}

async function product_save(url, data, meth) {
    return await fetch(url, {
        method: meth, // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(data)
    })
        .then(response => response.json())
        .then(result => {
            return result;
        })
        .catch(error => {
            console.error('Error:', error);
        });
}

async function product_del(id) {
    var url = `/api/product/${id}`;
    var meth = 'DELETE';
    return await fetch(url, {
        method: meth, // or 'PUT'
        headers: {
            'Content-Type': 'application/json',
        }
    })
        .then(response => response.json())
        .then(result => {
            return result;
        })
        .catch(error => {
            console.error('Error:', error);
        });
}

/* product - end */

/* report */

// load_general_report
async function report_general(from, to) {
    return await fetch(`/api/report_general/${from}/${to}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            if (data != undefined) {
                return data;
            }
            //covertTrueFalse(tb, 6, 'Hiện', 'Ẩn');
        })
        .catch((error) => {
            console.warn(error);
        });
}

// load_general_bill
async function report_bill(from, to, stt = null) {
    return await fetch(`/api/report_bill/${from}/${to}/${stt}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            if (data != undefined) {
                return data;
            }
            //covertTrueFalse(tb, 6, 'Hiện', 'Ẩn');
        })
        .catch((error) => {
            console.warn(error);
        });
}

// load_general_product
async function report_product(from, to) {
    return await fetch(`/api/report_product/${from}/${to}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            if (data != undefined) {
                return data;
            }
            //covertTrueFalse(tb, 6, 'Hiện', 'Ẩn');
        })
        .catch((error) => {
            console.warn(error);
        });
}
// load_notice
async function report_notice() {
    var cr_u = get_cr_user();
    return await fetch(`/api/report_notice/${cr_u.id}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            if (data != undefined) {
                return data[0];
            }
            //covertTrueFalse(tb, 6, 'Hiện', 'Ẩn');
        })
        .catch((error) => {
            console.warn(error);
        });
}

/* report end */

/* call api method - end */

/* helper method */
function setCookie(cname, cvalue) {
    const d = new Date();
    d.setTime(d.getTime() + (1 * 24 * 60 * 60 * 1000));
    let expires = "expires=" + d.toUTCString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}

function getCookie(cname) {
    let name = cname + "=";
    let decodedCookie = decodeURIComponent(document.cookie);
    let ca = decodedCookie.split(';');
    for (let i = 0; i < ca.length; i++) {
        let c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}

async function add_stt_column(dt) {
    await Array.prototype.forEach.call(dt, (item) => {
        item.stt = dt.indexOf(item) + 1;
    });
    return dt;
}

// format_vnd();
async function format_vnd() {
    // console.time();
    // let w = await waitingForNext(1000);
    // console.timeEnd();
    var lst_ele = document.getElementsByClassName('format_vnd');
    // console.log(lst_ele);
    Array.prototype.forEach.call(lst_ele, (item) => {
        if (!item.innerText.includes(',')) {
            item.innerText = get_format_VND(item.innerText);
        }
    });

    //format all table
    Array.prototype.forEach.call(document.querySelectorAll('table'), (tb) => {
        var t_head_th = tb.querySelector('thead').querySelectorAll('th');
        var t_body_tr = Array.prototype.filter.call(tb.querySelector('tbody').querySelectorAll('tr'), (fi) => { return (!fi.querySelector('th')) });

        var lst_tr = t_body_tr;
        //set up format money
        var arr_index_col = Array.prototype.filter.call(t_head_th, (f) => {
            return f.innerText.includes('VND') || f.innerText.includes('VNĐ');
        }).map(((m) => { return Array.prototype.indexOf.call(t_head_th, m); }));

        if (arr_index_col && lst_tr.length > 0 && arr_index_col.length > 0) {
            arr_index_col.forEach((col) => {
                if (col > 0) {
                    t_body_tr.forEach((e_td) => {
                        if (!e_td.children[col].innerText.includes(',')) {
                            e_td.children[col].innerText = get_format_VND(e_td.children[col].innerText);
                        }
                    });
                }
            });
        }
    });


    Array.prototype.forEach.call(document.getElementsByClassName('vnd_convert'), (nx) => {
        nx.addEventListener('input', () => {
            nx.value = get_format_VND(nx.value.replaceAll(',', ''));
            nx.dataset.value = nx.value.replaceAll(',', '');
        });
    });


}
function format_time(time) {
    try {
        var d = time.substr(0, time.indexOf('T'));
        var t = time.substring(time.indexOf('T') + 1, time.lastIndexOf(':'));
        return `${d} ${t}`;
    } catch (error) {
        return time;
    }
}
function get_format_VND(str) {
    if (isNaN(str)) return str;
    var pls = '';
    if(str.indexOf('-') > -1){
        str = str.replaceAll('-','');
        pls = '-';
    }
    var rs = '';
    var co = 1;
    for (let i = str.length - 1; i >= 0; i--) {
        var ch = str[i];
        rs = ch + rs;
        if (co % 3 == 0 && i != 0) {
            rs = ',' + rs;
        }
        co++;
    }
    return pls+rs;
}

async function delay(delayInms) {
    return new Promise(resolve => {
        setTimeout(() => {
            resolve(2);
        }, delayInms);
    });
}
async function waitingForNext(time) {
    // console.log('waiting...')
    let delayres = await delay(time);
}
/* helper method - end */