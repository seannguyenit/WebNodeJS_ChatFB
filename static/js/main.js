'use strict'

// const { json } = require("body-parser");


function check_is_login(){
    try {
        let cr_u = JSON.parse(getCookie('user'));
        //alert(cr_u);
        if(cr_u.token != undefined){
            return true;
        }else{
            return false;
        }
    } catch (error) {
        return false;
    }
}

async function set_cr_user(user){
    if(user){
        if(user.token){
            setCookie('user',JSON.stringify(user));
        }
    }
}
function get_cr_user(){
    try {
        return JSON.parse(getCookie('user'));
    } catch (error) {
        return {};
    }
}

function allRow(dt, tbody, arrCol, no_active = false, add_more = [],has_panel = true) {
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
        if(has_panel){
            newRow.appendChild(addActionPanel(dtr, no_active, add_more));
        }
        tbody.appendChild(newRow);
    }
    return tbody;
}

function addActionPanel(dt, no_active = false, add_more = []) {
    var str = '';
    add_more.forEach(e => {
        str += `<button class="btn btn-sm ${e.class} ml-1" onclick="${e.action}(${dt.role== undefined?dt.id:dt.role},${dt.role==undefined?0:dt.id})" data-action="del" data-id="${dt.id}">${e.title}</button>`;
    });
    str += `<button class="btn btn-sm btn-primary ml-1" onclick="load_detail(${dt.id})" data-toggle="modal" data-target="#detailId" data-action="edit" data-id="${dt.id}">Sửa</button>`;
    if (!no_active) {
        str += `<button class="btn btn-sm btn-warning ml-1" data-action="active" onclick="change_active(${dt.is_active},${dt.id})" data-id="${dt.id}">Ẩn/Hiện</button>`;
    }
    str += `<button class="btn btn-sm btn-warning ml-1" onclick="del_acc(${dt.id})" data-action="del" data-id="${dt.id}">Xóa</button>`;
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
        .then((response) => response.json()||'')
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

async function acc_login(user,pass) {
    var url = `/api/login`;
    var data = {user: user, pass: pass};
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
    var data = {user: user.id,token: user.token};
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

async function role_get_all_template(){
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



/* call api method - end */

/* helper method */
function setCookie(cname, cvalue) {
    const d = new Date();
    d.setTime(d.getTime() + (1*24*60*60*1000));
    let expires = "expires="+ d.toUTCString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
  }

function getCookie(cname) {
    let name = cname + "=";
    let decodedCookie = decodeURIComponent(document.cookie);
    let ca = decodedCookie.split(';');
    for(let i = 0; i <ca.length; i++) {
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
/* helper method - end */