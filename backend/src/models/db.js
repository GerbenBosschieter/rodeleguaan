const mysql = require('mysql');

// Create a MySQL connection
const connection = mysql.createConnection({
  host: 'localhost', // The host address of your MySQL database
  user: 'root', // The username of your MySQL database
  password: 'welkom01', // The password of your MySQL database
  database: 'rodeleguaan' // The name of your MySQL database
});

// Connect to the MySQL database
connection.connect((error) => {
  if (error) {
    console.error('Error connecting to the database:', error);
  } else {
    console.log('Database connection successful');
  }
});


connection.query('SELECT * FROM users', (error, results, fields) => {
    if (error) {
      console.error('Error executing query:', error);
    } else {
      console.log('Query results:', results);
    }
  });
  
module.exports = connection;
