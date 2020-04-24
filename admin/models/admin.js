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

module.exports.getAllEcuries = function(callback) {
    db.getConnection(function(err, connexion) {
        if(!err) {
            let sql = "select ecunum, ecunom from ecurie";
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};

module.exports.getCountSponsor = function(callback) {
    db.getConnection(function(err, connexion) {
        if(!err) {
            let sql = "select count(sponum) as countSpons from sponsor";
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};


module.exports.getSponsors = function(callback) {
    db.getConnection(function(err, connexion) {
        if(!err){
            let sql = "select * from sponsor";
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};

module.exports.getCountSponsor = function(callback) {
    db.getConnection(function(err, connexion) {
        if(!err) {
            let sql = "select count(sponum) as countSpons from sponsor";
            connexion.query(sql, callback);
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

module.exports.getEcuriePays = function(callback) {
    db.getConnection(function(err, connexion) {
        if(!err){
            let sql = "select paynum, paynom from pays";
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};

module.exports.getCountEcurie = function(callback) {
    db.getConnection(function(err, connexion) {
        if(!err){
            let sql = "select count(ecunum) as countEcu from ecurie";
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

module.exports.addResult = function(data, callback) {
    db.getConnection(function(err, connexion) {
        if(!err) {
            let sql = "insert into course set pilnum = " + data.pilote + ", tempscourse = " + data.timePilote + " where gpnum = " + data.idGP + ";";
            connexion.query(sql,callback);
            connexion.release();
        }
    })
}

module.exports.addSponsor = function(idSpons, nomSpons, sectAct, ecurieSpons, callback) {
    db.getConnection(function(err, connexion) {
        if(!err) {
            let sql = "insert into sponsor set sponom = '" + nomSpons + "' , sponum = '" + idSpons + "',  sposectactivite = '" + sectAct + "';";
            let sql2 = "insert into finance set ecunum = " + ecurieSpons + ", sponum = " + idSpons + ";";
            connexion.query(sql,callback);
            connexion.query(sql2,callback);
            console.log(sql);
            console.log(sql2);
            connexion.release();
        }
    })
};

module.exports.addEcurie = function(data, fileName, callback) {
    db.getConnection(function(err, connexion){
        if(!err){
            let sql = "insert into ecurie set ecunom = '" + data.nomEcurie + "', ecunomdir = '" + data.directeurEcurie + "', ecuadrsiege = '" + data.adrSiege + "', paynum = " + data.paysEcur + ", ecupoints = " + data.ptsEcurie + ", ecuadresseimage = '" +  fileName + "';";
            connexion.query(sql,callback);
            console.log(sql);
            connexion.release();
        }
    })
};

module.exports.addPilotes = function(data, callback){
    db.getConnection(function(err, connexion){
        if(!err){
            let sql="INSERT INTO pilote SET paynum = " + data.natioPilote + ", ecunum = " + data.ecuriePilote + ", pilpoints = " + data.pointsPilote + ", pilpoids = " + data.poidsPilote + ", piltaille = " + data.taillePilote + ", pilnom = '" + data.nomPilote + "', pilprenom = '" + data.prenomPilote + "', pildatenais = '" + data.naissancePilote + "', piltexte = '" + data.descriptionPilote + "'";
            connexion.query(sql,callback);
            console.log(sql);
            connexion.release();
        }
    });
};

module.exports.editEcurie = function(idEcur, nomEcur, direcEcur, paysEcur, adrSiege, pointEcur, callback) {
    db.getConnection(function(err, connexion) {
        if(!err) {
            let sql = "update ecurie set ecunom = '" + nomEcur + "', ecunomdir = '" + direcEcur + "', paynum = " + paysEcur + ", ecuadrsiege = '" + adrSiege + "', ecupoints = " + pointEcur + " where ecurie.ecunum = " + idEcur + ";";
            connexion.query(sql,callback);
            console.log(sql);
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



module.exports.getAllGP = function(callback) {
    db.getConnection(function(err, connexion) {
        if(!err) {
            let sql = "select gpnum, gpnom from grandprix order by gpnom asc;";
            connexion.query(sql,callback);
            connexion.release();
        }
    });
};

module.exports.AjoutPhoto = function (fichier, callback) {
    db.getConnection(function (err,connexion) {
        if(!err) {
            let sql = "INSERT INTO photo (PHONUM,PILNUM,PHOADRESSE) SELECT 1,MAX(PILNUM),'"+fichier+"' from pilote";
            connexion.query(sql,callback);
            console.log(sql);
            connexion.release();
        }
    });
};

module.exports.getCountResultatsGP = function(data, callback){
    db.getConnection(function(err, connexion){
        if(!err) {
            let sql = "select count(pilnum) as countRes from course where course.gpnum = " + data + ";";
            connexion.query(sql,callback);
            connexion.release();
        }
    });
};

module.exports.getPilotesNotInGP = function(data, callback){
    db.getConnection(function(err, connexion){
        if(!err) {
            let sql = "select pilote.pilnum, pilnom from pilote where pilote.PILNUM not in (select pilnum from course where course.gpnum = " + data + ")";
            connexion.query(sql,callback);
            connexion.release();
        }
    })
}


module.exports.getResultats = function(data, callback){
    db.getConnection(function(err, connexion){
        if(!err) {
            let sql = "select course.pilnum, pilnom, pilprenom, tempscourse from course, pilote where course.pilnum = pilote.pilnum and course.gpnum = " + data + " order by tempscourse asc";
            connexion.query(sql,callback);
            connexion.release();
        }
    });
};

module.exports.deleteRes = function(data, callback) {
    db.getConnection(function(err, connexion) {
        if(!err) {
            let sql = "delete from course where course.pilnum = " + data;
            connexion.query(sql,callback);
            connexion.release();
        }
    })
}

module.exports.deleteSponsorFromId = function(data, callback, callback1){
    db.getConnection(function(err, connexion){
        if(!err) {
            let sql = "delete from finance where sponum = " + data;
            let sql1 = "delete from sponsor where sponum = " + data;
            connexion.query(sql,callback);
            connexion.query(sql1,callback1);
            connexion.release();
        }
    });
};

module.exports.deleteEcurieFromid = function(data, callback, callback1, callback2, callback3){
    db.getConnection(function(err, connexion){
        if(!err) {
            let sql = "delete from voiture where ecunum = " + data + ";";
            let sql1 = "delete from finance where ecunum = " + data + ";";
            let sql2 = "update pilote set ecunum = null where ecunum = " + data + ";";
            let sql3 = "delete from ecurie where ecunum = " + data + ";";
            console.log(sql);
            connexion.query(sql,callback);
            connexion.query(sql1,callback1);
            connexion.query(sql2,callback2);
            connexion.query(sql3,callback3);
            connexion.release();
        }
    });
};

module.exports.deletePiloteFromId = function(data, callback, callback2, callback3, callback4){
    db.getConnection(function(err, connexion){
        if(!err){
            let sql = "delete from pilote where pilnum = " + data +  ";";
            let sql2 = "delete from photo where pilnum = " + data + ";";
            let sql3 = "delete from sponsorise where pilnum = " + data + ";";
            let sql4 = "delete from course where pilnum = " + data + ";";
            console.log(sql);
            connexion.query(sql2,callback2);
            connexion.query(sql3,callback3);
            connexion.query(sql4,callback4);
            connexion.query(sql,callback);

            connexion.release();
        }
    });
};

module.exports.deleteCircuitFromId = function(data, callback, callback1, callback2){
    db.getConnection(function(err, connexion){
        if(!err) {
            let sql2 = "delete from course where gpnum = (select gpnum from grandprix where grandprix.CIRNUM = " + data + ");";
            let sql = "delete from grandprix where cirnum = " + data + ";";
            let sql1 = "delete from circuit where cirnum = " + data + ";";
            connexion.query(sql2, callback2);
            connexion.query(sql, callback);
            connexion.query(sql1, callback1);

            console.log(sql);
            console.log(sql1);
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

module.exports.getSponsorFromId = function(data, callback){
    db.getConnection(function(err, connexion){
        if(!err) {
            let sql = "select sponum, sponom, sposectactivite from sponsor where sponum = " + data + ";";
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};

module.exports.getEcurieSponsorisee = function(data, callback) {
    db.getConnection(function(err, connexion) {
        if(!err) {
            let sql = "select ecurie.ecunum, ecunom from ecurie, finance where finance.sponum = " + data + " and ecurie.ecunum = finance.ECUNUM;";
            connexion.query(sql, callback);
            connexion.release();
        }
    })
}
module.exports.getEcurieFromId = function(data, callback){
        db.getConnection(function(err, connexion){
            if(!err){
                let sql = "SELECT ecunum, ecunom, ecunomdir, ecuadrsiege, ecupoints from ecurie where ecunum = " + data + ";";
                connexion.query(sql, callback);
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

module.exports.getEcurieCountries = function(data, callback) {
    db.getConnection(function(err, connexion){
        if(!err){
            let sql = "select pays.paynum, paynom from pays, ecurie where ecurie.paynum = pays.PAYNUM and ecurie.ECUNUM = " + data + ";";
            connexion.query(sql,callback);
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

module.exports.addCircuits = function(data, fileName, callback){
    db.getConnection(function(err, connexion){
        if(!err){
            let sql = "insert into circuit SET cirnom = '" + data.nomCircuit + "', paynum = " + data.paysCircuit + ", ciradresseimage = '" + fileName + "',  cirlongueur = " + data.longueurCircuit + ", cirnbspectateurs = " + data.nbSpectateurs + ", cirtext = '" + data.descriptionCircuit + "'";
            console.log(sql);
            connexion.query(sql, callback);
            connexion.release();
        }
    });
};