'use strict'
check_authen();

function check_authen() {
    try {
        let cr_u = JSON.parse(getCookie('user'));
        //alert(cr_u);
        if (cr_u.token == undefined) {
            location.href = '/login';
        }
    } catch (error) {
        location.href = '/login';
    }
}
innit_menu();

async function innit_menu() {
    await load_menu();
    var ls_mn = document.querySelectorAll('[class = menu_left]');
    if (ls_mn == undefined) return;
    ls_mn.forEach((e) => {
        e.addEventListener('click', (p) => {
            var t = e;
            console.log(e);
            if (t != null && t != undefined && t.dataset.id != null && t.dataset.id != undefined) {
                // var place = document.getElementById('main_menu');
                // place.querySelector(`div [data-id=${t.dataset.id}]`).classList.add('menu_active');
                run_main(t.dataset.id);
            }
        });
    });

    try {
        let cr_user = JSON.parse(getCookie('user'));
        document.getElementById('user_info').innerText = `${cr_user.user || ''} - `;
        document.getElementsByClassName('avata')[0].src = cr_user.avatar_url|| '../img/avatar.png';
        var ae = document.createElement('a');
        ae.innerText = 'Đăng xuất';
        ae.style.color = 'white';
        ae.href = '/login';
        document.getElementById('user_info').parentElement.appendChild(ae);
        // var ex = document.createElement('a');
        // ex.innerText = ' - ex_v3.0';
        // ex.style.color = 'white';
        // ex.href = '../client/';
        // document.getElementById('user_info').parentElement.appendChild(ex);
    } catch (error) {

    }
}

async function load_menu(token = 'test') {
    let cr_user = JSON.parse(getCookie('user'));
    let dt = await fetch(`/api/menu/${cr_user.id}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            return data[0];
        })
        .catch((error) => {
            console.warn(error);
            return undefined;
        });
    var place = document.getElementById('main_menu');
    if (place) {
        dt.forEach(e => {
             var action = e.action;
            if(action === 'report'){
                action = "check_report";
            }
            if (location.href.includes(action)) {
                place.innerHTML += `<div class="menu_left menu_active" data-id="${action}">${e.name}</div>`;
            } else {
                place.innerHTML += `<div class="menu_left" data-id="${action}">${e.name}</div>`;
            }
        });
    }

}

function run_main(a) {
    //await run_view(a);
    run_action_view(a);
}

function run_action_view(action) {
    // switch (action) {
    //     case 'chat':
    //         window.open('/home/chat', '_blank');
    //         break;
    //     default:
            location.href = `/home/${action}`;
        // code block
    // }
};

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