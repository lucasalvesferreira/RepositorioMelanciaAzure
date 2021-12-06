
// Usuario que insere

var mysql = require('mysql2');
var connection = mysql.createConnection({
    host     : 'localhost',
    port     : '3306',
    user     : 'root',
    password : 'Pikachu22@',
    database : 'melancia'
});

connection.connect(function(err) {
    if (err) throw err;
    console.log('Conectado com sucesso!')
});


// Usuario que seleciona 

// module.exports = connection;
// var mysql = require('mysql2');
// var connection = mysql.createConnection({
//     host     : 'localhost',
//     port     : '3306',
//     user     : 'urubuQseleciona',
//     password : 'Urubu100',
//     database : 'melancia'
// });

// connection.connect(function(err) {
//     if (err) throw err;
//     console.log('Conectado com sucesso!')
// });



module.exports = connection;
