let db = require('../configDb');


module.exports.checkLogin = function(login,callback){
    db.getConnection(function(err,connexion){
        if(!err){
            let sql="SELECT login, passwd FROM login WHERE login = '"+login+"'";
            connexion.query(sql,callback);
            connexion.release();
        }
    });
};

module.exports.getPilotes = function(callback) {
    db.getConnection(function(err, connexion) {
        if(!err){
            let sql = "SELECT pilnom, pilnum, pilprenom, pildatenais from pilote order by pilnom asc";
            connexion.query(sql,callback);
            connexion.release();
        }
    });
};


module.exports.getAllCountries = function(callback) {
    db.getConnection(function(err, connexion) {
        if(!err){
            let sql = "select distinct paynum, paynom from pays order by paynom asc";
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};

module.exports.getNationalities = function(callback) {
    db.getConnection(function(err, connexion) {
        if(!err){
            let sql = "SELECT DISTINCT paynum, paynat from pays order by paynat asc";
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};

module.exports.getPiloteNationality = function(data, callback) {
    db.getConnection(function(err, connexion) {
        if(!err) {
            let sql = "select PAYNAT, pays.PAYNUM from pays, pilote where pilote.PAYNUM = pays.PAYNUM and pilote.PILNUM = " + data + ";";
            connexion.query(sql, data, callback);
            connexion.release();
        }
    });
};

module.exports.getCircuitsPays = function(callback){
    db.getConnection(function(err, connexion) {
        if(!err){
            let sql = "select cirnum, pays.paynum, paynom from pays, circuit where pays.PAYNUM = circuit.PAYNUM order by paynom asc";
            connexion.query(sql,callback);
            connexion.release();
        }
    });
};

module.exports.getPiloteEcurie = function(data, callback) {
    db.getConnection(function(err, connexion) {
        if(!err) {
            let sql = "select ecunom, ecurie.ecunum from ecurie, pilote where pilote.ECUNUM = ecurie.ECUNUM and pilote.PILNUM = "  + data + ";";
            connexion.query(sql, data, callback);
            connexion.release();
        }
    });
};

module.exports.getPilotePointsTaillePoids = function(data, callback) {
    db.getConnection(function(err, connexion) {
        if(!err) {
            let sql = "select pilpoints, pilpoids, piltaille from pilote where pilote.PILNUM = "  + data + ";";
            connexion.query(sql, data, callback);
            connexion.release();
        }
    });
};

module.exports.getCountPilotes = function(callback) {
    db.getConnection(function(err, connexion) {
        if(!err){
            let sql = "SELECT count(pilnum) as countPil from pilote";
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};

module.exports.getEcuriesInfo = function(callback) {
    db.getConnection(function(err, connexion){
        if(!err){
            let sql = "select ecunum, ecunom, ecunomdir, ECUADRSIEGE, ECUPOINTS from ecurie order by ecunom asc";
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};


module.exports.getEcuries = function(callback) {
    db.getConnection(function(err, connexion) {
        if(!err){
            let sql = "SELECT ecunum, ecunom from ecurie order by ecunom asc";
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};

module.exports.addPilotes = function(numPil, prePil, nomPil, naissPil, natioPil, ecuriePil, ptsPil, pdsPil, taillePil, descrPil, callback){
    db.getConnection(function(err, connexion){
        if(!err){
            let sql="INSERT INTO pilote SET paynum = " + natioPil + ", ecunum = " + ecuriePil + ", pilpoints = " + ptsPil + ", pilpoids = " + pdsPil + ", piltaille = " + taillePil + ", pilnom = '" + nomPil + "', pilprenom = '" + prePil + "', pildatenais = '" + naissPil + "', piltexte = '" + descrPil + "'";
            connexion.query(sql,callback);
            connexion.release();
        }
    });
};

module.exports.editCircuit = function(numcir, nomcir, longueurCir, paysCir, nbSpectateurs, descrCir, callback) {
    db.getConnection(function(err, connexion) {
        if(!err) {
            let sql = "update circuit set cirnom = '" + nomcir + "', cirlongueur = " + longueurCir + ", paynum = " + paysCir + ", cirnbspectateurs = " + nbSpectateurs + ", cirtext = '" + descrCir + "' where circuit.cirnum = " + numcir + ";";
            connexion.query(sql,callback);
            console.log(sql);
            connexion.release();
        }
    });
};

module.exports.editPilote = function(numPil, prePil, nomPil, naissPil, natioPil, ecuriePil, ptsPil, pdsPil, taillePil, descrPil, callback){
    db.getConnection(function(err, connexion){
        if(!err){
            let sql="update pilote SET paynum = " + natioPil + ", ecunum = " + ecuriePil + ", pilpoints = " + ptsPil + ", pilpoids = " + pdsPil + ", piltaille = " + taillePil + ", pilnom = '" + nomPil + "', pilprenom = '" + prePil + "', pildatenais = '" + naissPil + "', piltexte = '" + descrPil + "' where pilote.PILNUM = " + numPil + ";";
            connexion.query(sql,callback);
            console.log(sql);
            connexion.release();
        }
    });
};

module.exports.deletePiloteFromId = function(data, callback){
    db.getConnection(function(err, connexion){
        if(!err){
            let sql = "delete from pilote where pilnum = " + data +  ";";
            console.log(sql);
            connexion.query(sql,callback);
            connexion.release();
        }
    });
};


module.exports.deleteCircuitFromId = function(data, callback){
    db.getConnection(function(err, connexion){
        if(!err) {
            let sql = "delete from circuit where cirnum = " + data + ";";
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};

module.exports.getCircuitFromId = function(data, callback){
    db.getConnection(function(err, connexion){
        if(!err){
            let sql = "select cirnum, paynum, cirnom, cirlongueur, cirnbspectateurs, cirtext from circuit where cirnum = " + data + ";";
            connexion.query(sql,callback);
            connexion.release();
        }
    });
};

module.exports.getCircuitCountries = function(data, callback){
    db.getConnection(function(err, connexion) {
        if(!err){
            let sql = "select circuit.paynum, paynat, paynom from pays, circuit where pays.paynum = circuit.paynum and circuit.cirnum = " + data + ";";
            connexion.query(sql, callback);
            connexion.release();
        }

    });
};

module.exports.getPiloteFromId = function(data, callback){
    db.getConnection(function(err, connexion){
        if(!err){
            let sql = "SELECT pilprenom, pilnum,  pilnom, piltexte, pilpoids, piltaille, pilpoints, pildatenais from pilote where pilnum = " + data +  ";";
            connexion.query(sql,callback);
            connexion.release();
        }
    });
};

module.exports.getCircuits = function(data, callback) {
    db.getConnection(function(err, connexion){
        if(!err) {
            let sql = "select cirnom, cirnum,cirlongueur, paynom, cirnbspectateurs, cirtext, ciradresseimage from circuit, pays where circuit.PAYNUM = pays.PAYNUM order by cirnom asc";
            connexion.query(sql, data, callback);
            connexion.release();
        }
    });
};

module.exports.getCountCircuit = function(data, callback) {
    db.getConnection(function(err, connexion){
        if(!err) {
            let sql = "select count(cirnum) as countCir from circuit";
            connexion.query(sql, data, callback);
            connexion.release();
        }
    })
}

module.exports.addCircuits = function(idCir, nomCir, longueurCir, nbSpectateurs, description, pays, callback){
    db.getConnection(function(err, connexion){
        if(!err){
            let sql = "insert into circuit SET cirnom = '" + nomCir + "', paynum = " + pays + ", ciradresseimage = 'singapour.png',  cirlongueur = " + longueurCir + ", cirnbspectateurs = " + nbSpectateurs + ", cirtext = '" + description + "'";
            console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};