/*
* config.Db contient les parametres de connection à la base de données
* Il utilise le module mysql
* il va créer aussi un pool de connexions utilisables
* la méthode getConnection permet de se connecter à MySQL
*
*/

var mysql = require('mysql'); // voir https://github.com/felixge/node-mysql/

var pool  = mysql.createPool({
  host     : 'localhost',
  user     : 'bd',
  password : 'bede',
  database : 'grandprix'
});

module.exports.getConnection = function(callback) {
    pool.getConnection(function(err, connection) {
        callback(err, connection);
    });
};
