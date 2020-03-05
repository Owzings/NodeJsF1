let db = require('../configDb');

/*
* Récupérer l'intégralité les écuries avec l'adresse de la photo du pays de l'écurie
* @return Un tableau qui contient le N°, le nom de l'écurie et le nom de la photo du drapeau du pays
*/
module.exports.getListeResultat = function (callback) {
   // connection à la base
	db.getConnection(function(err, connexion){
        if(!err){
        	  // s'il n'y a pas d'erreur de connexion
        	  // execution de la requête SQL
						let sql ="select gpnom, payadrdrap, gpnum from grandprix, pays, circuit where grandprix.CIRNUM = circuit.CIRNUM and circuit.PAYNUM = pays.PAYNUM order by gpnom";
						//console.log (sql);
            connexion.query(sql, callback);
            connexion.release();
         }
      });
};

module.exports.getInfoResultat = function(data, callback) {
   
    db.getConnection(function(err, connexion){
        if(!err){
            let sql = "select grandprix.gpnum, gpnom, gpcommentaire, gpdate, tempscourse, pilnom, pilprenom from grandprix, course, pilote where grandprix.GPNUM = course.GPNUM and course.PILNUM = pilote.PILNUM and grandprix.GPNUM = " + data + " order by tempscourse asc";
            connexion.query(sql, data, callback);
            connexion.release();
        }
    });

}