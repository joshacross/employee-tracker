const mysql = require('mysql2');

// Connect to Database
const db = mysql.createConnection(
    {
        host: 'localhost',
        // Your mySQL username,
        user: 'root',
        // Your mySQL pwd
        password: 'mySQLBallz00oo!23!23',
        database: 'employee'
    },
    console.log('Connected to the employee database.')
);

module.exports = db;