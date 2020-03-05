let db = require('../configDb');

module.exports.getListeCircuit = function(callback) {
    db.getConnection(function(err, connexion){
        if(!err){
            let sql = "select cirnum, cirnom, PAYADRDRAP from pays, circuit where circuit.PAYNUM = pays.PAYNUM order by cirnom";
            connexion.query(sql, callback);
            connexion.release();
        }
    });     
};

module.exports.getInfoCircuitGeneric = function(data, callback) {
    db.getConnection(function(err, connexion){
        if(!err) {
            let sql = "select cirnom, cirlongueur, paynom, cirnbspectateurs, cirtext, ciradresseimage from circuit, pays where circuit.PAYNUM = pays.PAYNUM and circuit.CIRNUM = " + data + ";";
            connexion.query(sql, data, callback);
            connexion.release();
        }
    });
}