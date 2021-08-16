'use strict';
module.exports = function(app) {
  let accCtrl = require('./controllers/AccountsController');
  let roleCtrl = require('./controllers/RolesController');
  let configCtrl = require('./controllers/configsController');
  let groupCtrl = require('./controllers/groupscontroller');
  let messCtrl = require('./controllers/messController');

  // todoList Routes
  app.route('/api/login')
  .post(accCtrl.login);
  app.route('/api/logout')
  .post(accCtrl.logout);

  // app.route('/api/refresh')
  // .get(accCtrl.refresh);
  app.route('/api/menu/:token')
  .get(accCtrl.get_menu);
  app.route('/api/Accounts')
    .get(accCtrl.get)
    .post(accCtrl.store);

  // app.route('/api/group/:group')
  //   .get(accCtrl.get_group);

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

  app.route('/api/mess')
  .get(messCtrl.get)
  .post(messCtrl.store);

  app.route('/api/mess/:id')
  .get(messCtrl.detail)
  .put(messCtrl.update)
  .delete(messCtrl.delete);

  app.route('/api/mess_group/:group_id/:user_id')
  .get(messCtrl.get_group)

  app.route('/api/mess_group')
  .post(messCtrl.store_group);

  app.route('/api/mess_group/:id')
  .get(messCtrl.detail_group)
  .put(messCtrl.update_group)
  .delete(messCtrl.delete_group);

  app.route('/api/mess_chat/:group_id')
  .get(messCtrl.get_chat_in_group)
};

