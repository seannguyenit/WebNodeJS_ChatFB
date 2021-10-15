'use strict';
const mysql = require('mysql');

const db = mysql.createConnection({
  host: process.env.DB_HOST || "localhost",
  user: process.env.DB_USER || "webchat",
  password: process.env.DB_PASS || "Thinh@123",
  database: process.env.DB_NAME || "simpleweb"
});

module.exports = db;