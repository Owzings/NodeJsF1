let model = require('../models/circuit.js');
const util = require('util');
let async = require('async');


// ////////////////////// L I S T E R     C I R C U I T S

module.exports.ListerCircuit = function(request, response){
    response.title = 'Liste des circuits';
    model.getListeCircuit(function (err, result) {
        if (err) {
            console.log(err);
            return;
        }
        response.listeCircuits = result;
        // console.log(result);
        response.render('listeCircuit', response);
        // console.log(util.inspect(response.listeCircuits, {showHidden: false, depth: null}));
    });
}

module.exports.CircuitGenericInfo = function(request, response) {
    let data = request.params.id;
    response.title = 'Information sur le circuit';
    async.parallel([
        function(callback) {
            model.getInfoCircuitGeneric(data, function(err, result){callback(err, result)});
        },
        function(callback) {
            model.getListeCircuit(function(err2, result2){callback(err2, result2)});
        }
    ],
    function(err, result){
        if(err){
        console.log(err);
        return;
     }  

     response.circuitInfo = result[0];
     response.listeCircuits = result[1];
     response.render('detailCircuit', response); 
    });
}
