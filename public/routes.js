'use strict';

module.exports = function (app) {
  let homeCtrl = require('./controllers/HomeController');

  // todoList Routes
  app.route('/login')
    .get(homeCtrl.get_login_page);

  app.route('')
    .get(homeCtrl.get);

  app.route('/home/notice')
    .get(homeCtrl.notice);
  app.route('/home/user')
    .get(homeCtrl.user);
  app.route('/home/chat')
    .get(homeCtrl.chat);
  app.route('/home/role_type')
    .get(homeCtrl.role_type);
  app.route('/home/group')
    .get(homeCtrl.group);
  app.route('/role_type/role')
    .get(homeCtrl.role_details);
  app.route('/home/tag_name')
    .get(homeCtrl.tag_name);
  app.route('/home/fast_reply')
    .get(homeCtrl.fast_reply);
  app.route('/home/product')
    .get(homeCtrl.product);
    app.route('/home/check_report')
    .get(homeCtrl.check_report);
    app.route('/home/report')
    .get(homeCtrl.report);
    app.route('/home/bill')
    .get(homeCtrl.report_bill);
    app.route('/home/rpp')
    .get(homeCtrl.report_product);
    app.route('/bill/details')
    .get(homeCtrl.bill_details);
  // app.route('/Accounts/:id')
  //   .get(accCtrl.detail)
  //   .put(accCtrl.update)
  //   .delete(accCtrl.delete);

};