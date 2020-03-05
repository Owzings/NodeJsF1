/*
* config.Db contient les parametres de connection à la base de données
* il va créer aussi un pool de connexions utilisables
* sa méthode getConnection permet de se connecter à MySQL
*
*/

let db = require('../configDb');

/*
* Récupérer l'intégralité les écuries avec l'adresse de la photo du pays de l'écurie
* @return Un tableau qui contient le N°, le nom de l'écurie et le nom de la photo du drapeau du pays
*/
module.exports.getListeEcurie = function (callback) {
   // connection à la base
	db.getConnection(function(err, connexion){
        if(!err){
        	  // s'il n'y a pas d'erreur de connexion
        	  // execution de la requête SQL
						let sql ="SELECT ecunum, payadrdrap, ecunom FROM " +
                            "ecurie e INNER JOIN pays p ";
						sql= sql + "ON p.paynum=e.paynum ORDER BY ecunom";
						//console.log (sql);
            connexion.query(sql, callback);

            // la connexion retourne dans le pool
            connexion.release();
         }
      });
};

module.exports.getInfoEcurieGeneric = function(data, callback) {
   db.getConnection(function(err, connexion){
      if(!err) {
         let sql = "select ecunom, ecunomdir, ecuadrsiege, paynom, ecuadresseimage from ecurie, pays where ecurie.PAYNUM = pays.PAYNUM and ecurie.ECUNUM = " + data + ";";
         connexion.query(sql, data, callback);
         connexion.release();
      }
   });
}

module.exports.checkIfEcurieHasPilote = function(data, callback) {
   db.getConnection(function(err, connexion) {
      if(!err) {
         let sql = "select pilnum, pilnom, pilprenom from pilote, ecurie where pilote.ECUNUM = ecurie.ECUNUM and ecurie.ECUNUM = " + data + ";";
         connexion.query(sql, data, callback);
         connexion.release();
      }
   });
}

module.exports.getFournisseurPneu = function(data, callback) {
   db.getConnection(function(err, connexion) {
      if(!err) {
         let sql = "select fpnom from fourn_pneu, ecurie where ecurie.FPNUM = fourn_pneu.FPNUM and ecurie.ECUNUM = " + data + ";";
         connexion.query(sql, data, callback);
         connexion.release();
      }
   });
}

module.exports.getVoitureEcurie = function(data, callback) {
   db.getConnection(function(err, connexion) {
      if (!err) {
         let sql = "select voiadresseimage, voinom, typelibelle from ecurie, voiture, type_voiture where voiture.ECUNUM = ecurie.ECUNUM and voiture.TYPNUM = type_voiture.TYPNUM and ecurie.ECUNUM = " + data + ";";
         connexion.query(sql, data, callback);
         connexion.release();
      }
   })
}