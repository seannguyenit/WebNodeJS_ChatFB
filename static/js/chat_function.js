'use strict'

var lst_users = [];
var lst_tags = [];
var lst_fast_replay = [];
var cr_gr;
var cr_users = [];

load_data();

function check_authen() {
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

async function load_list_tags() {
    var rs = await tag_name_get_all();
    var ele = document.getElementById('tag_name');
    var ele_chat = document.getElementById('tag_list');
    ele_chat.innerHTML = '';
    ele.innerHTML = ` <option value="0" selected>Tag</option>
    <option value="-1">Chưa tags</option>`;
    rs.forEach((e) => {
        ele.innerHTML += `<option style="background-color: ${e.color};" value="${e.id}">${e.name}</option>`;
        ele_chat.innerHTML += `<div class="tag_chat_select" style="background-color: ${e.color};" data-id="${e.id}">${e.name}</div>`;
        lst_tags.push(e);
    });

}

async function load_list_fast_reply() {

}

async function load_data() {
    let cr_u = check_authen();
    load_list_user();
    load_list_tags();
    var gr_e = document.getElementById('group_list');
    gr_e.innerHTML = '';
    let dt = await chat_group_get_all(cr_u.id);
    if (dt) {
        
        dt.forEach((e) => {
            gr_e.innerHTML += `<div class="userchat" onclick="open_chat(this)" data-id="${e.id}" data-title="${e.title}" data-ids="${e.user_ids}" data-tags="${e.tags}">
            <div class="w-100 d-flex">
                <div class="col-md-3 pl-0 pr-0">
                    <img class="avata" src="../img/avatar.jpg" width="100%" />
                </div>
                <div class="col-md-9 chat_group">
                    <div>${e.title || ''}</div>
                    <div style="font-style: italic;">
                        ${e.mess || ''}
                    </div>
                    <div>${e.tags || ''}</div>
                </div>
            </div>
        </div>`;
        });
    }
}

async function open_chat(ele) {
    var group_id = ele.dataset.id;
    var title = ele.dataset.title || '';
    var tags = ele.dataset.tags || '';
    var strIds = (ele.dataset.ids || '').split(',');
    cr_gr = group_id;
    let cr_u = check_authen();
    cr_users = strIds.filter((f)=>{return f != cr_u.id});
    let dt = await chat_group_get_all_chat(group_id);
    load_chat_header(title, tags);
    load_content_chat(dt, cr_u.id);
}

function load_chat_header(title, tags) {
    var ct = document.getElementById('chat_header');
    ct.innerHTML = ` <a class="text-dark" href="facebook.com">Tên nhóm chat : ${title}</a>
    <div style="background-color: aquamarine; width: fit-content;padding: 2px;">${tags}</div>`;
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

}

function add_send_ui(mess){
    var ct = document.getElementById('chat_text_content');
    ct.innerHTML += `<div class="frommess"><div class="mess">${mess}</div></div>`;
}
function add_receive_ui(mess){
    var ct = document.getElementById('chat_text_content');
    ct.innerHTML += `<div class="tomess"><div class="mess">${mess}</div></div>`;
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


async function chat_group_get_detail(id, user_id) {
    return await fetch(`/api/mess_group/${id}/${user_id}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            return data;
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
    var cr_u = check_authen();
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