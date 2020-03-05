let db = require('../configDb');

module.exports.getFirstLetterNomPilote = function(callback){
    db.getConnection(function(err, connexion){
        if(!err){
            let sql = "SELECT DISTINCT SUBSTRING(pilnom, 1,1) as pilFirstLetter FROM pilote group by pilnom;";
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};

module.exports.getInfoFromFirstLetter = function(data, callback) {
    db.getConnection(function(err, connexion) {
        if (!err) {
            let sql = "select pilote.PILNUM, PILNOM, PILPRENOM, PHOADRESSE from pilote, photo where pilnom LIKE '" + data + "%' and pilote.PILNUM = photo.PILNUM and photo.PHONUM = 1;";
            connexion.query(sql, data, callback);
            connexion.release();
        }
    });
}

module.exports.getInfoPiloteGeneric = function(data, callback) {
    db.getConnection(function(err, connexion) {
        if(!err) {
            let sql = "select PILNOM, PILPRENOM, PILDATENAIS, PILPOIDS, PILTEXTE, PILTAILLE from pilote where pilote.PILNUM = " + data + ";";
            // console.log(sql);
            connexion.query(sql, data, callback);
            connexion.release();
        }
    });
}

module.exports.getPiloteSponsor = function(data, callback) {
    db.getConnection(function(err, connexion) {
        if(!err) {
            let sql = "select sponom, sposectactivite from sponsor, sponsorise, pilote WHERE pilote.PILNUM = sponsorise.PILNUM and sponsorise.SPONUM = sponsor.SPONUM and pilote.PILNUM = " + data + ";";
            console.log(sql);
            connexion.query(sql, data, callback);
            connexion.release();
        }
    });
}

module.exports.getPiloteNationality = function(data, callback) {
    db.getConnection(function(err, connexion) {
        if(!err) {
            let sql = "select PAYNAT from pays, pilote where pilote.PAYNUM = pays.PAYNUM and pilote.PILNUM = " + data + ";";
            connexion.query(sql, data, callback);
            connexion.release();
        }
    });
}

module.exports.getPiloteEcurie = function(data, callback) {
    db.getConnection(function(err, connexion) {
        if(!err) {
            let sql = "select ecunom from ecurie, pilote where pilote.ECUNUM = ecurie.ECUNUM and pilote.PILNUM = "  + data + ";";
            connexion.query(sql, data, callback);
            connexion.release();
        }
    });
}

module.exports.getPiloteMainPhoto = function(data, callback) {
    db.getConnection(function(err, connexion) {
        if(!err) {
            let sql = "SELECT PHOADRESSE from photo, pilote where photo.PILNUM = pilote.PILNUM and photo.PHONUM = 1 and pilote.PILNUM = "  + data + ";";
            connexion.query(sql, data, callback);
            connexion.release();
        }
    });
}

module.exports.getPiloteAllPhotos = function(data, callback){
    db.getConnection(function(err, connexion) {
        if(!err) {
            let sql = "SELECT PHOADRESSE from photo, pilote where photo.PILNUM = pilote.PILNUM and photo.PHONUM != 1 and pilote.PILNUM = " + data + ";";
            connexion.query(sql, data, callback);
            connexion.release();
        }
    });
}