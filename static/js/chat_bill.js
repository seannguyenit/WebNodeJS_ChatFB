'use strict'

var lst_bill_checkout = [];

var dt_table = document.getElementById('bill_table').querySelector('tbody');

//this.open_chat.prototype;

async function load_bill_table() {
    if (cr_gr) {
        let dt = await get_bill_by_group(cr_gr);
        if (dt) {
            dt_table.innerHTML = '';
            dt.forEach(row => {
                dt_table.innerHTML += `<tr data-bill_id="${row.id}">
                <td>${row.time}</td>
                <td>${row.created}</td>
                <td>${row.time}</td>
                <td><a href="#">xem</a></td>
                </tr>`;
            });
        }
    }
}

function load_bill_checkout(){
    if(lst_cr_product){
        var dt_tb = document.getElementById('bill_checkout').querySelector('tbody');
        dt_tb.innerHTML = '';
        var lstPro = lst_product.filter((p)=>{return lst_cr_product.includes(p.id)});
        lstPro.forEach((e)=>{
            dt_tb.innerHTML += `<tr>
            <td scope="row">${e.name}</td>
            <td><input type="number" onchange="calculate(this)" value="1" /></td>
            <td>${e.price}</td>
            <td class="money_t">${e.price}</td>
        </tr>`;
        });
        calculate_total();
    }
}

async function get_bill_by_group(group_id) {
    return await fetch(`/api/bill_in_group/${group_id}` /*, options */)
        .then((response) => response.json())
        .then((data) => {
            return data[0];
        })
        .catch((error) => {
            console.warn(error);
        });
}

async function calculate(ele){
    var q = parseInt(ele.value);
    var tr = ele.closest('tr');
    tr.children[3].innerText = q * parseInt(tr.children[2].innerText);
    calculate_total();
}

async function calculate_total(){
    var dt_tb = document.getElementById('bill_checkout').querySelector('tbody').getElementsByClassName('money_t');
    var total_e = document.getElementById('lb_total');
    total_e.innerText = Array.prototype.slice.call(dt_tb).map(o => o.innerText).reduce((a, c) => { return a + c });
}