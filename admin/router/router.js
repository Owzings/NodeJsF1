
let HomeController = require('./../controllers/HomeController');
let AdminController = require('./../controllers/AdminController');

module.exports = function(app){
    app.get('/',AdminController.connexion);
   //  app.get('/administration',AdminController.connexion);

   //  app.get('/home',AdminController.home);

    app.post('/accueil',AdminController.connected);

    app.get('/pilotes',AdminController.ajoutPilotes);
    app.get('/ajouterPilote',AdminController.addPilotes);
    app.post('/ajouterPilote/info',AdminController.ajoutPiloteValid);
    app.post('/editPilote/info', AdminController.editPiloteValid);
    app.get('/modifierPilote/:id',AdminController.getPiloteFromId);
    app.get('/deletePilote/:id', AdminController.deletePiloteFromId);
    app.get('/circuits', AdminController.ajoutCircuits);
    app.get('/ajouterCircuit', AdminController.addCircuits);
    app.post('/ajouterCircuit/info', AdminController.ajoutCircuitsValid);
    app.get('/deleteCircuit/:id', AdminController.deleteCircuitFromId);
    app.get('/modifierCircuit/:id', AdminController.getCircuitFromId);
    app.post('/editCircuit/info', AdminController.editCircuitValid);
    app.get('/ecuries', AdminController.ajoutEcuries);
    app.get('/ajouterEcurie', AdminController.addEcuries);
    app.post('/ajouterEcurie/info', AdminController.ajoutEcurieValid);
    app.get('/modifierEcurie/:id', AdminController.editEcurieFromId);
    app.post('/editEcurie/info', AdminController.editEcurieValid);
    app.get('/deleteEcurie/:id', AdminController.deleteEcurieFromId);
    app.get('/sponsors',AdminController.ajoutSponsors);
    app.get('/ajouterSponsor', AdminController.addSponsors);
    app.post('/ajouterSponsor/info', AdminController.ajoutSponsorValid);
    app.get('/deleteSponsor/:id', AdminController.deleteSponsorFromId);
    app.get('/modifierSponsor/:id', AdminController.editSponsorFromId);
    app.get('/resultats',AdminController.resultatsGP);
    app.get('/resultats/:id',AdminController.resultatsGPFromId);
    app.get('/resultats/saisie/supprimerResultat/:id', AdminController.deleteResultatFromId);
    // app.post('/editSponsor/info', AdminController.editSponsorValid);
    app.post('/resultats/saisie/ajouterResultat/:id', AdminController.AddResultToGP);

    

// tout le reste
app.get('*', HomeController.NotFound);
app.post('*', HomeController.NotFound);

};
