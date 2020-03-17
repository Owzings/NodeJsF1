
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
   //  app.get('/supprimerVip',AdminController.supprimerVip);
   //  app.post('/supprimerVip/del',AdminController.delVip);

   //  app.get('/photos',AdminController.newPhoto);
   //  app.get('/ajouterPhoto',AdminController.newPhoto);
   //  app.post('/ajouterPhoto/add',AdminController.ajoutPhoto);
   //  app.get('/supprimerPhoto',AdminController.choixVipDelPhoto);
   //  app.post('/supprimerPhoto/del', AdminController.delPhoto);
   //  app.post('/supprimerPhoto/del/conf',AdminController.valDelPhoto);


// tout le reste
app.get('*', HomeController.NotFound);
app.post('*', HomeController.NotFound);

};
