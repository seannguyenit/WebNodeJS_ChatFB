'use strict';
module.exports = function (app) {
  let accCtrl = require('./controllers/AccountsController');
  let roleCtrl = require('./controllers/RolesController');
  let configCtrl = require('./controllers/configsController');
  let groupCtrl = require('./controllers/groupscontroller');
  let messCtrl = require('./controllers/messController');
  let productCtrl = require('./controllers/productsController');
  let billCtrl = require('./controllers/billsController');
  let reportCtrl = require('./controllers/reportController');
  let cusCtrl = require('./controllers/customerController');

  // todoList Routes
  app.route('/api/login')
    .post(accCtrl.login);
  app.route('/api/logout')
    .post(accCtrl.logout);

  // app.route('/api/refresh')
  // .get(accCtrl.refresh);
  app.route('/api/menu/:token')
    .get(accCtrl.get_menu);
  app.route('/api/menu_acc_report/:id')
    .get(accCtrl.get_acc_report);
    app.route('/api/menu_report/:id')
    .get(accCtrl.get_menu_report);
  app.route('/api/Accounts')
    .get(accCtrl.get)
    .post(accCtrl.store);

  app.route('/api/acc_same/:user_id')
    .get(accCtrl.get_same_group);
  // app.route('/api/group/:group')
  //   .get(accCtrl.get_group);
  app.route('/api/check_acc/:id/:username/:role_id/:group_id')
    .get(accCtrl.check_exist);
  app.route('/api/Accounts/:id/:is_admin')
    .get(accCtrl.detail);

  app.route('/api/Accounts/:id')
    .put(accCtrl.update)
    .delete(accCtrl.delete);

  app.route('/api/role_types')
    .get(roleCtrl.get)
    .post(roleCtrl.store);

  app.route('/api/role_types/:id')
    .get(roleCtrl.detail)
    .put(roleCtrl.update)
    .delete(roleCtrl.delete);

  //    save_permission
  app.route('/api/permission/:role_id')
    .get(roleCtrl.get_permission)
    .put(roleCtrl.save_permission);
  //check_action
  app.route('/api/check_permission/:role_id/:par')
    .get(roleCtrl.check_action);

  app.route('/api/menu_role')
    .get(roleCtrl.get_menu_role);

  app.route('/api/tag_name')
    .get(configCtrl.get_tag_name)
    .post(configCtrl.store_tag_name);
  app.route('/api/tag_name/:id')
    .get(configCtrl.detail_tag_name)
    .put(configCtrl.update_tag_name)
    .delete(configCtrl.delete_tag_name);

  app.route('/api/fast_reply')
    .get(configCtrl.get_fast_reply)
    .post(configCtrl.store_fast_reply);
  app.route('/api/fast_reply/:id')
    .get(configCtrl.detail_fast_reply)
    .put(configCtrl.update_fast_reply)
    .delete(configCtrl.delete_fast_reply);


  app.route('/api/group')
    .get(groupCtrl.get)
    .post(groupCtrl.store);

  app.route('/api/group/:id')
    .get(groupCtrl.detail)
    .put(groupCtrl.update)
    .delete(groupCtrl.delete);

  // app.route('/api/mess')
  //   .get(messCtrl.get)
  //   .post(messCtrl.store);

  // app.route('/api/mess/:id')
  //   .get(messCtrl.detail)
  //   .put(messCtrl.update)
  //   .delete(messCtrl.delete);

  app.route('/api/mess_group/:user_id')
    .get(messCtrl.get_group_by_user)


  // app.route('/api/mess_group')
  //   .post(messCtrl.store_group);
  app.route('/api/chat_group_delete/:id')
    .delete(messCtrl.delete_chat_group);
  app.route('/api/chat_group_create')
    .post(messCtrl.detail_group);
  app.route('/api/chat_group_tags_name/:ids')
    .get(messCtrl.get_group_chat_tags_name);
  //search_group

  app.route('/api/search_group/:user_id/:tag_id/:key')
    .get(messCtrl.search_group);
  app.route('/api/chat_group_details/:user_id/:cus_id')
    .get(messCtrl.get_group);
  app.route('/api/chat_group_details/:user_id/:cus_id')
    .put(messCtrl.update_group);
  app.route('/api/chat_group_details/:user_id/:cus_id/:bill_code/:trade_code/:cmoney')
    .post(messCtrl.bill_checkout);

  app.route('/api/chat_group_mess/:cus_id/:acc_receive')
    .get(messCtrl.get_latest_mess)
    .post(messCtrl.sync_message)
  app.route('/api/mess_group_details/:group_id')
    .get(messCtrl.get_group_detail)
  //   .delete(messCtrl.delete_group);

  app.route('/api/mess_chat/:cus_id/:max_id/:limit')
    .get(messCtrl.get_chat_in_group);

  app.route('/api/discount/:product_id')
    .get(productCtrl.get_discount)
    .post(productCtrl.store_discount);

  app.route('/api/product')
    .get(productCtrl.get)
    .post(productCtrl.store);

  app.route('/api/product/:id')
    .get(productCtrl.detail)
    .put(productCtrl.update)
    .delete(productCtrl.delete);

  app.route('/api/product_group/:group_id')
    .get(productCtrl.get_by_group);

  app.route('/api/product_group')
    .post(productCtrl.save_group_product);

  app.route('/api/bill_in_group/:group_id')
    .get(billCtrl.get_by_group);

  app.route('/api/bill/:cus_id')
    .get(billCtrl.get_by_cus);
  app.route('/api/bill_details/:bill_id')
    .get(billCtrl.get_details);
  app.route('/api/bill_product/:bill_id')
    .get(billCtrl.get_product_in_bill);
  app.route('/api/bill_details/:bill_id')
    .put(billCtrl.set_stt);

  app.route('/api/bill_update/:id')
    .put(billCtrl.update);

  app.route('/api/report_general/:from/:to')
    .get(reportCtrl.report_general);
  app.route('/api/report_bill/:from/:to/:stt')
    .get(reportCtrl.report_bill);
  app.route('/api/report_product/:from/:to')
    .get(reportCtrl.report_product);
  app.route('/api/report_notice/:user_id')
    .get(reportCtrl.report_individual);

  app.route('/api/customer')
    .get(cusCtrl.get)
    .post(cusCtrl.store);

  app.route('/api/customer/:id/:cus_id')
    .get(cusCtrl.detail);

  app.route('/api/customer_details/:fb_id')
    .put(cusCtrl.update);

  app.route('/api/money_count/:bill_id')
    .get(billCtrl.get_money_count);

  app.route('/api/money_count')
    .post(billCtrl.store_money_count);

  app.route('/api/money_count/:user_id/:id')
    .delete(billCtrl.delete_money_count);

};

