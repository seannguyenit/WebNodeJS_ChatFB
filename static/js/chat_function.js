'use strict'

var lst_users = [];
var lst_users_taged = [];
var lst_all_tags = [];
var lst_cr_tags = [];
var lst_fast_replay = [];
var cr_gr;
var cr_users = [];
var cr_note;
var lst_product = [];
var lst_cr_product = [];

const token = "EAAPO8P5BZCqsBAME1pZBrm13HdMpOe14y7ZBSGlTEFj8ZAEZAvORy8KzsqmJfZCS9oHdOv2dAun0TL6R5QuVZANHbYuG4wWS9iDVcWFs2JMXM2hZADc9g0L47udtA7qhmanpIEOvDk5iww9YaGGqDz6ER8920eBPRPHxJgOseowQhmjpgjWZCMIOC";


load_data();

function check_authen_inchat() {
    try {
        let cr_u = JSON.parse(getCookie('user'));
        //alert(cr_u);
        if (cr_u.token == undefined) {
            location.href = '/login';
        }
        return cr_u;
    } catch (error) {
        location.href = '/login';
    }
}

async function load_list_user() {
    var rs = await acc_get_all();
    if (rs == undefined) return;
    var ele = document.getElementById('lst_user');
    ele.innerHTML = '';
    rs.forEach((e) => {
        ele.innerHTML += `<option data-value="${e.id}">${e.user}</option>`;
        lst_users.push(e);
    });
}

async function load_list_tags(tags) {
    // var rs = await tag_name_get_all();
    var ele = document.getElementById('tag_name');
    var ele_chat = document.getElementById('tag_list');
    ele_chat.innerHTML = '';
    ele.innerHTML = ` <option value="0" selected>Tag</option>
    <option value="-1">Chưa tags</option>`;
    lst_all_tags.forEach((e) => {
        ele.innerHTML += `<option style="background-color: ${e.color};" value="${e.id}">${e.name}</option>`;
        if (tags != null && tags.includes(e.id.toString())) {
            ele_chat.innerHTML += `<div class="tag_chat_select active" onclick="change_tags(this)" style="background-color: ${e.color};" data-id="${e.id}">${e.name}</div>`;
        } else {
            ele_chat.innerHTML += `<div class="tag_chat_select" onclick="change_tags(this)" style="background-color: ${e.color};" data-id="${e.id}">${e.name}</div>`;
        }
        // lst_all_tags.push(e);
    });
    lst_cr_tags = tags.split(',').filter((c) => { return c.length > 0 });
}

async function change_tags(ele) {
    var lstGroup = document.getElementById('group_list');
    var gr = lstGroup.querySelector(`[data-id='${cr_gr}']`);
    var par_tags = gr.querySelector('[class=chat_group_tags]');
    if (ele.classList.contains('active')) {
        ele.classList.remove('active');
        if (par_tags) {
            par_tags.removeChild(par_tags.querySelector(`[data-tagid='${ele.dataset.id}']`));
            lst_cr_tags = lst_cr_tags.filter((ft) => { return ft.toString() != ele.dataset.id });
        }
    } else {
        ele.classList.add('active');
        if (par_tags) {
            var f = lst_all_tags.find((t) => { return t.id.toString() == ele.dataset.id });
            par_tags.innerHTML += `<div class="tags_details" data-tagid="${f.id}" style="background-color:${f.color}"></div>`;
            lst_cr_tags.push(ele.dataset.id);
        }
    }
    // ele.dataset.tags = lst_cr_tags.join(',');
    save_tag();
    var str_html = '';
    var lst_sl = document.querySelectorAll(`[class = 'tag_chat_select active']`);
    //header_tags
    lst_sl.forEach((e) => {
        str_html += `<div style="background-color: ${e.style.backgroundColor}; width: fit-content;padding: 2px;">${e.innerText}</div>`;
    });
    var header_tag = document.getElementById('header_tags');
    header_tag.innerHTML = str_html;
}

async function load_list_fast_reply() {

}

async function load_data() {
    let cr_u = check_authen_inchat();
    lst_all_tags = await tag_name_get_all();
    load_Product();
    load_list_user();
    var gr_e = document.getElementById('group_list');
    gr_e.innerHTML = '';
    let dt = await chat_group_get_all(cr_u.id);
    if (dt) {
        dt.forEach((e) => {
            gr_e.innerHTML += `<div class="userchat" onclick="open_chat(this)" data-id="${e.id}" data-title="${e.title}" data-ids="${e.user_ids}" data-tags="${e.tags}">
            <div class="w-100 d-flex">
                <div class="avatar_user col-md-3">
                    <img class="avata" src="../img/avatar.jpg" />
                </div>
                <div class="col-md-9 chat_group">
                    <div class="chat_group_title">${e.title || ''}</div>
                    <div class="chat_group_mess">
                        ${e.mess || ''}
                    </div>
                    <div class="chat_group_tags">${load_group_tags(e.tags)}</div>
                </div>
            </div>
        </div>`;
        });
    }
    return;
    if (cr_u.user != 'admin') return;
    let dt_fb = await get_group_chat_fb();
    if (dt_fb) {
        for (var i = 0; i < dt_fb.length; i++) {
            var e = dt_fb[i];
            gr_e.innerHTML += await getHTML_group_chat_fb(e);
        }
    }
}

async function getHTML_group_chat_fb(data_row) {
    var sender = data_row.senders.data[0];
    var e = await get_group_sender_fb(sender.id);
    if (e.error == null || e.error == undefined) {
        return `<div class="userchat" onclick="open_chat(this)" data-type="fb" data-id="${data_row.id}" data-title="${data_row.id}" data-ids="${data_row.id}" data-tags="${e.tags}">
            <div class="w-100 d-flex">
                <div class="avatar_user col-md-3">
                    <img class="avata" src="../img/avatar.jpg" />
                </div>
                <div class="col-md-9 chat_group">
                    <div class="chat_group_title">${(e.first_name + ' ' + e.last_name) || ''}</div>
                    <div class="chat_group_mess">
                        
                    </div>
                    <div>${e.updated_time || ''}</div>
                </div>
            </div>
        </div>`
    } else {
        return `<div class="userchat" onclick="open_chat(this)" data-type="fb" data-id="${data_row.id}" data-title="${data_row.id}" data-ids="${data_row.id}" data-tags="${e.tags}">
            <div class="w-100 d-flex">
                <div class="col-md-3 pl-0 pr-0">
                    <img class="avata" src="../img/avatar.jpg" width="100%" />
                </div>
                <div class="col-md-9 chat_group">
                    <div>${(sender.name) || ''}</div>
                    <div style="font-style: italic;">
                        
                    </div>
                    <div>${sender.updated_time || ''}</div>
                </div>
            </div>
        </div>`
    }
}

async function get_group_sender_fb(psid) {
    var url = `https://graph.facebook.com/${psid}?fields=first_name,last_name,profile_pic&access_token=${token}`;
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
            return undefined;
        });
}

async function get_group_chat_fb() {
    var url = `https://graph.facebook.com/104708095106097?fields=conversations{senders,updated_time}&access_token=${token}`;
    return await fetch(url /*, options */)
        .then((response) => response.json())
        .then((data) => {
            if (data != undefined) {
                return data.conversations.data;
            }
            //covertTrueFalse(tb, 6, 'Hiện', 'Ẩn');
        })
        .catch((error) => {
            console.warn(error);
        });
}

async function open_chat(ele) {
    document.getElementById('tag_list').classList.remove('hide');
    document.getElementById('chat_button').classList.remove('hide');
    var group_id = ele.dataset.id;
    cr_gr = group_id;
    var gr_details = await chat_group_get_detail(group_id);
    var type = gr_details.type;
    var title = gr_details.title || '';
    var tags = gr_details.tags || '';
    var strIds = (gr_details.user_ids || '').split(',');
    cr_note = gr_details.note;
    document.getElementById('note').value = cr_note;
    load_Product_by_group();
    await load_list_tags(tags);
    await load_users_taged(strIds);
    // get from Facebook
    try {
        if (type != 'fb') {
            // cr_gr = group_id;
            let cr_u = check_authen_inchat();
            cr_users = strIds.filter((f) => { return f != cr_u.id });
            let dt = await chat_group_get_all_chat(group_id);
            load_chat_header(title, tags);
            load_content_chat(dt, cr_u.id);
        } else {
            let dt = await chat_group_get_all_chat_fb(group_id);
            load_chat_header_fb(dt.senders.data);
            load_content_chat_fb(dt.messages.data);
        }
        await config_add_user_to_chat();
    } catch (err) {
        console.warn(err);
    }
    for (var co = 0; co < ele.parentElement.children.length; co++) {
        var e = ele.parentElement.children[co];
        e.classList.remove('active');
    }
    ele.classList.add('active');
}
function load_content_chat_fb(dt) {
    var ct = document.getElementById('chat_text_content');
    ct.innerHTML = ` <div class="text-center"><a href="#" class="text-info">show more</a></div>`;
    dt.forEach(e => {
        if (e.from.id == '104708095106097') {
            add_send_ui(e.message);
            // ct.innerHTML += `<div class="frommess"><div class="mess">${e.mess}</div></div>`;
        } else {
            add_receive_ui(e.message);
            // ct.innerHTML += `<div class="tomess"><div class="mess">${e.mess}</div></div>`;
        }
    });
    auto_scroll();
}

function load_chat_header_fb(sd) {
    var ct = document.getElementById('chat_header');
    var tt = '';
    sd.forEach((e) => {
        tt += " - " + e.name
    });
    ct.innerHTML = ` <a class="text-dark" href="facebook.com">${tt}</a>
    <div style="background-color: aquamarine; width: fit-content;padding: 2px;">From FB</div>`;
}

async function chat_group_get_all_chat_fb(id) {
    var url = `https://graph.facebook.com/${id}?fields=messages{message,from,to,created_time},name,senders&access_token=${token}`;
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

function load_chat_header(title) {
    var ct = document.getElementById('chat_header');
    var str_html = '';
    var lst_sl = document.querySelectorAll(`[class = 'tag_chat_select active']`);
    //header_tags
    lst_sl.forEach((e) => {
        str_html += `<div style="background-color: ${e.style.backgroundColor}; width: fit-content;padding: 2px;">${e.innerText}</div>`;
    });
    ct.innerHTML = ` <a class="text-dark" href="facebook.com">Tên nhóm chat : ${title}</a><div id="header_tags" class="d-flex">${str_html}</div>`;
}

function load_content_chat(lst_chats, user_id) {
    var ct = document.getElementById('chat_text_content');
    ct.innerHTML = ` <div class="text-center"><a href="#" class="text-info">show more</a></div>`;
    lst_chats.forEach(e => {
        if (e.sender == user_id) {
            add_send_ui(e.mess);
            // ct.innerHTML += `<div class="frommess"><div class="mess">${e.mess}</div></div>`;
        } else {
            add_receive_ui(e.mess);
            // ct.innerHTML += `<div class="tomess"><div class="mess">${e.mess}</div></div>`;
        }
    });
    auto_scroll();
}

function add_send_ui(mess) {
    var ct = document.getElementById('chat_text_content');
    ct.innerHTML += `<div class="frommess"><div><img class="avatar_in_chat" src="../img/avatar.jpg"/></div><div class="mess">${mess}</div></div>`;
}
function add_receive_ui(mess) {
    var ct = document.getElementById('chat_text_content');
    ct.innerHTML += `<div class="tomess"><div><img class="avatar_in_chat" src="../img/avatar.jpg"/></div><div class="mess">${mess}</div></div>`;
}

/* chat_group */
async function chat_group_get_all(user_id) {
    return await fetch(`/api/mess_group/${0}/${user_id}` /*, options */)
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

async function chat_group_get_all_chat(id) {
    return await fetch(`/api/mess_chat/${id}` /*, options */)
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

async function chat_group_save(url, data, meth) {
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

async function chat_group_del(id) {
    var url = `/api/mess_group/${id}`;
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

/* chat_group - end */

/* chat_group_mess */
async function chat_group_mess_get_all() {
    return await fetch(`/api/mess` /*, options */)
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


async function chat_group_mess_get_detail(id) {
    return await fetch(`/api/mess/${id}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            return data;
        })
        .catch((error) => {
            console.warn(error);
        });
}

async function chat_group_mess_save(url, data, meth) {
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

async function chat_group_mess_del(id) {
    var url = `/api/mess/${id}`;
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

/* chat_group_mess - end */

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

async function acc_get_all() {
    return await fetch(`/api/accounts` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            return data[0];
        })
        .catch((error) => {
            console.warn(error);
        });
}

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

async function add_message(mess) {
    var cr_u = check_authen_inchat();
    var url = `/api/mess`;
    var meth = 'POST';
    var data = { chat_group_id: cr_gr, mess: mess, sender: cr_u.id };
    await fetch(url, {
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

function auto_scroll() {
    var ele = document.getElementById('chat_text_content');
    ele.scrollTop = ele.scrollHeight;
}

async function load_users_taged(ids) {
    // if (cr_users) {
    lst_users_taged = lst_users.filter((e) => { return ids.includes(e.id.toString()) });
    var e = document.getElementById('lst_user_taged');
    e.innerHTML = '';
    lst_users_taged.forEach((r) => {
        e.innerHTML += `<div class="user_taged">
            <div id="user_${r.id}">${r.user} - ${r.role_name}</div>
            <a href="#" onclick="remove_user_taged(${r.id})" data-id="${r.id}" class="btn btn-sm btn-danger">X</a>
            </div>`;
    });
    // }
}

function checkExisted(id) {
    var e = document.getElementById('lst_user_taged');
    if (e.querySelector(`[id=user_${id}]`)) {
        return true;
    }
    return false;
}

async function config_add_user_to_chat() {
    // await load_users_taged();
    var input = document.getElementById('input_tag_user');
    input.addEventListener('keydown', (ev, ip) => {
        if (ev.keyCode == 13) {
            var select_u = lst_users.find((f) => { return f.user == ev.currentTarget.value });
            if (select_u) {
                if (!checkExisted(select_u.id)) {
                    let r = select_u;
                    var e = document.getElementById('lst_user_taged');
                    e.innerHTML += `<div class="user_taged">
                    <div id="user_${r.id}">${r.user} - ${r.role_name}</div>
                    <a href="#" onclick="remove_user_taged(${r.id})" data-id="${r.id}" class="btn btn-sm btn-danger">X</a>
                    </div>`;
                    lst_users_taged.push(select_u);
                    save_users_tagged();
                } else {
                    alert(`${select_u.user} đã có trong danh sách !`)
                }
                input.value = '';
            }
        }
    });
}

async function remove_user_taged(id) {
    var e = document.getElementById('lst_user_taged');
    e.removeChild(e.querySelector(`[id=user_${id}]`).parentNode);
    lst_users_taged = lst_users_taged.filter((c) => { return c.id.toString() != id.toString() });
    save_users_tagged();
}

function get_list_taged() {
    var arr = [];
    var e = document.getElementById('lst_user_taged');
    e.querySelectorAll('a').forEach((r) => {
        arr.push(r.dataset.id);
    });
    return arr.join(',');
}

function load_group_tags(tags) {
    var htm = '';
    if (tags && lst_all_tags && lst_all_tags.length > 0) {
        lst_all_tags.filter((c) => { return tags.includes(c.id.toString()) }).forEach((f) => {
            htm += `<div class="tags_details" data-tagid="${f.id}" style="background-color:${f.color}"></div>`;
        });
    }
    return htm;
}

async function save_tag() {
    if (cr_gr && cr_u) {
        var url = `/api/mess_group_details/${cr_gr}`;
        var data = { tags: lst_cr_tags.join(',') };
        fetch(url, {
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
}

async function save_users_tagged() {
    if (cr_gr && cr_u) {
        var url = `/api/mess_group_details/${cr_gr}`;
        var data = { user_ids: lst_users_taged.map((m) => { return m.id }).join(',') };
        fetch(url, {
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
}

async function load_Product() {
    lst_product = await product_get_all();
    var ele = document.getElementById('lst_product');
    ele.innerHTML = '';
    lst_product.forEach((e) => {
        ele.innerHTML += `<option value="${e.code}">${e.name}</option>`;
    });
}
async function product_get_all() {
    return await fetch(`/api/product` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            return data;
        })
        .catch((error) => {
            console.warn(error);
        });
}
async function load_Product_by_group(){
    var pro_gr = await product_get_by_group(cr_gr);
    lst_cr_product = pro_gr.map(m=>{return m.product_id});
    var lstPro = lst_product.filter((p)=>{return lst_cr_product.includes(p.id)});
    if (lstPro) {
        var dt_table = document.getElementById('table_product').querySelector('tbody');
        dt_table.innerHTML = '';
        lstPro.forEach(row => {
            dt_table.innerHTML += `<tr>
            <td scope="row">${row.code}</td>
            <td scope="row">${row.name}</td>
            <td>${row.ck}</td><td><a onclick="del_product(this)" data-pid="${row.id}" href="#">Xóa</a></td>`;
        });
    }
}
