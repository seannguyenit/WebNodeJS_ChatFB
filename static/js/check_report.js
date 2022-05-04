check_report();
'use strict'

/* Check report 
*  
*
*/
async function check_report(){
    let cr_user = JSON.parse(getCookie('user'));
    let dt = await fetch(`/api/menu_acc_report/${cr_user.id}` /*, options */)
    .then((response) => response.json())
    .then((data) => {
        return data[0];
    })
    .catch((error) => {
        console.warn(error);
        return undefined;
    });
    if(dt){
        dt.forEach(e => {
            if(Number(e.status) == 1 && e.action === 'report_general'){
                window.location = "./report";
            }
            else if (Number(e.status) == 1 && e.action === 'report_bill'){
                window.location = "./bill";
            }else if (Number(e.status) == 1 && e.action === 'report_product'){
                window.location = "./rpp";
            }
        })
    }
}