`use strict`


// var cr_gr;

load_right_section();


async function load_right_section() {
    // config add product
    var ip_search = document.getElementById('input_search_product');
    ip_search.addEventListener('keydown', (ev, ip) => {
        if (ev.keyCode == 13) {
            var select = lst_product.find((f) => { return f.code == ev.currentTarget.value });
            if (select) {
                if (!checkExisted(select.id)) {
                    lst_cr_product.push(select.id);
                    save_product(select.id, cr_gr);
                    var dt_table = document.getElementById('table_product').children[1];
                    dt_table.innerHTML += `<tr id="row_${select.id}">
                        <td scope="row">${select.code}</td>
                        <td scope="row">${select.name}</td>
                        <td>${select.ck}</td><td><a onclick="del_product(this)" data-pid="${select.id}" href="#">Xóa</a></td>`;
                    } else {
                    alert(`${select.name} đã có trong danh sách !`)
                }
                ip_search.value = '';
            }
        }
    });

    //config note
    var note_ele = document.getElementById('note');
    note_ele.addEventListener('focusout',()=>{save_note()});

    // lst_cr_product = await product_get_by_group(group_id);
}

function checkExisted(id) {
    var dt_table = document.getElementById('table_product');
    if (dt_table.querySelector(`[id=row_${id}]`)) {
        return true;
    }
    return false;
}

function del_product(ele) {
    save_product(ele.dataset.pid, cr_gr);
    lst_cr_product = lst_cr_product.filter(f=>{return f.toString() != ele.dataset.pid});
    ele.closest('tbody').removeChild(ele.closest('tr'));
}



async function product_get_by_group(group_id) {
    return await fetch(`/api/product_group/${group_id}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            return data[0];
        })
        .catch((error) => {
            console.warn(error);
        });
}

async function save_product(product_id) {
    if (cr_gr) {
        var url = `/api/product_group`;
        var data = { product_id: product_id, group_id: cr_gr };
        fetch(url, {
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
}

async function save_note() {
    if (cr_gr) {
        var url = `/api/mess_group_details/${cr_gr}`;
        var data = { note: document.getElementById('note').value };
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