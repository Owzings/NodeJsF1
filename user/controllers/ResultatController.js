let model = require('../models/resultat.js');
let async = require('async');

// //////////////////////////L I S T E R    R E S U L T A T S
module.exports.ListerResultat = function(request, response){

	response.title = 'Liste des résulats des grands prix';
	model.getListeResultat(function(err, result) {
		if (err) {
			console.log(err);
			return;
		}
		response.listeResultat = result;
		console.log(result);
		response.render('listeResultat', response);
	});
};

module.exports.InfoResultat = function(request, response){
	response.title = 'Information sur le grand prix';
	let data = request.params.id;
	async.parallel([
		function(callback) {
			model.getListeResultat(function(err, result){callback(err, result)});
		},
		function(callback) {
			model.getInfoResultat(data, function(err2, result2){callback(err2, result2)});
		}
	],
	function(err, result){
        if(err){
        console.log(err);
        return;
	 }  
	 
	 console.log(result);
	 
	 response.listeResultat = result[0];
	 response.infoResulat = result[1];
	 response.render('detailResultat', response);
	});
};
