
let HomeController = require('./../controllers/HomeController');
let ResultatController = require('./../controllers/ResultatController');
let EcurieController = require('./../controllers/EcurieController');
let PiloteController = require('./../controllers/PiloteController');
let CircuitController = require('./../controllers/CircuitController');

// Routes
module.exports = function(app){

// Main Routes
    app.get('/', HomeController.Index);
    app.get('/accueil', HomeController.Index);

// pilotes
    app.get('/repertoirePilote', PiloteController.ListerFirstLetterPilote); 
    app.get('/reportoirePilote/:lettre', PiloteController.PiloteStartingByLetter);
    app.get('/infoPilote/:id', PiloteController.PiloteInfo);

 // circuits
   app.get('/circuits', CircuitController.ListerCircuit);
   app.get('/detailCircuit/:id', CircuitController.CircuitGenericInfo);

// Ecuries
   app.get('/ecuries', EcurieController.ListerEcurie);
   app.get('/detailEcurie/:id', EcurieController.EcurieGenericInfo)

 //Résultats
   app.get('/resultats', ResultatController.ListerResultat);
   app.get('/detailgp/:id', ResultatController.InfoResultat);


// tout le reste
app.get('*', HomeController.NotFound);
app.post('*', HomeController.NotFound);

};
