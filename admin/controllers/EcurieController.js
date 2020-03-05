let model = require('../models/ecurie.js');
let async = require('async');

   // //////////////////////// L I S T E R  E C U R I E S

module.exports.ListerEcurie = function(request, response){
   response.title = 'Liste des écuries';
    model.getListeEcurie( function (err, result) {
        if (err) {
            // gestion de l'erreur
            console.log(err);
            return;
        }
        response.listeEcurie = result;
        //console.log(result);
response.render('listeEcurie', response);
});
}

module.exports.EcurieGenericInfo = function(request, response) {
    let data = request.params.id;
    response.title = "Information sur l'écurie";
    async.parallel([
        function(callback) {
            model.getInfoEcurieGeneric(data, function(err, result){callback(err, result)});
        },
        function(callback) {
            model.checkIfEcurieHasPilote(data, function(err2, result2){callback(err2, result2)});
        },
        function(callback) {
            model.getFournisseurPneu(data, function(err3, result3){callback(err3, result3)});
        },
        function(callback) {
            model.getVoitureEcurie(data, function(err4, result4){callback(err4, result4)});
        },
        function(callback){
            model.getListeEcurie(function(err5, result5){callback(err5, result5)});
        }

    ],
    function(err,result){
        if(err){
            console.log(err);
                return;
        }

         response.ecurieInfo = result[0];
         response.ifEcurieHasPilote = result[1];
         response.fournisseurPneu = result[2];
         response.voirureEcurie = result[3];
         response.listeEcurie = result[4];
         response.render('detailEcurie', response);
    });
}
