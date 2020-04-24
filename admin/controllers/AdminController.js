let model = require("../models/admin.js");
let async = require('async');


let Cryptr = require('cryptr');
let cryptr = new Cryptr('MaSuperCléDeChiffrementDeouF'); // clé de chiffrement. Ne pas la modifier

let formidable = require('formidable'); //Module permettant de transferer les images
let form = new formidable.IncomingForm();
form.encoding = "utf-8";
form.uploadDir ="./public/images/vip";
form.keepExtension = true;

let fs = require('fs-extra'); //Module permettant de gérer plusieurs extensions non présente dans NJS natif

module.exports.connexion = function(request, response){
    response.title = "Connexion à l'administration";
    request.session.logged = false;
    request.session.admin = "";
    response.render('connect',response);
};

module.exports.home = function(request,response){
    response.title = "Administration";
    response.render('home',response);
};

module.exports.connected = function(request,response){
    response.title = "Administration";
    let data1 = request.body.login;
    let data2 = request.body.pswd;
    model.checkLogin(data1,function(err,result){
        if(err) {
            console.log(err);
            return;
        }
        if(result !== ""){
            let decrypted = cryptr.decrypt(result[0]['passwd']);
            if(decrypted === data2){
                response.isLogged = result;
                response.render('home',response);
                request.session.logged = true;
                request.session.admin = data1;
            }else{
                response.render('badLog',response);
            }
        }else{
            response.render('badLog',response);
        }

    })
};

module.exports.editSponsorFromId = function(request, response){
    response.title = "Modif de sponsor";
    let data = request.params.id;
    async.parallel([
        function(callback) {
            model.getSponsorFromId(data, function(err, result){callback(err, result)});
        },
        function(callback){
            model.getEcurieSponsorisee(data,function(err2, result2){callback(err2, result2)});
        },
        function(callback) {
            model.getAllEcuries(function(err2, result3){callback(err2, result3)});
        },
    ],
    function(err,result){
        if(err){
            console.log(err);
                return;
        }
        response.getSponsorInfo = result[0];
        response.getAllEcuries = result[1];
        response.getEcurieSponsorisee = result[2];

        console.log(result[2]);
        console.log("ok");
        console.log(result[1]);

        response.render('editSponsor', response);
    });
};

module.exports.editEcurieFromId = function(request, response){
    response.title = "Modif d'écurie";
    let data = request.params.id;
    async.parallel([
        function(callback){
            model.getEcurieFromId(data, function(err, result){callback(err, result)});
        },
        function(callback){
            model.getAllCountries(function(err2, result2){callback(err2, result2)});
        },
        function(callback){
            model.getEcurieCountries(data, function(err3, result3){callback(err3, result3)});
        },
    ],
    function(err,result){
        if(err){
            console.log(err);
                return;
        }
        response.getEcurieInfo = result[0];
        console.log(result[0]);
        response.getAllCountries = result[1];
        response.getEcurieCountries = result[2];

        response.render('editEcurie', response);
    });
};

module.exports.getCircuitFromId = function(request, response){
    response.title = "Modif d'un circuit";
    let data = request.params.id;
    async.parallel([
        function(callback){
            model.getCircuitFromId(data, function(err, result){callback(err, result)});
        },
        function(callback){
            model.getCircuitCountries(data, function(err2, result2){callback(err2, result2)});
        },
        function(callback){
            model.getAllCountries(function(err3, result3){callback(err3, result3)});
        },
    ],
    function(err,result){
        if(err){
            console.log(err);
                return;
        }
        response.getCircuitInfo = result[0];
        response.getCircuitCountries = result[1];
        response.getAllCountries = result[2];


        response.render('editCircuit',response);
     });   
};

module.exports.getPiloteFromId = function(request, response){
    response.title = "Modif d'un pilote";
    let data = request.params.id;
    async.parallel([
        function(callback){
            model.getPiloteFromId(data, function(err, result){callback(err,result)});
        },
        function(callback){
            model.getPiloteNationality(data, function(err2, result2){callback(err2, result2)}
            );
        },
        function(callback){
            model.getPiloteEcurie(data, function(err3, result3){callback(err3, result3)}
            );
        },
        function(callback){
            model.getNationalities(function(err4, result4){callback(err4, result4)});
        },
        function(callback){
            model.getEcuries(function(err5, result5){callback(err5, result5)});
        },
        // function(callback){
        //     model.getPilotePointsTaillePoids(function(err4, result4){callback(err4, result4)});
        // }, 


    ],
    function(err,result){
        if(err){
            console.log(err);
                return;
        }
        response.getPiloteInfo = result[0];
        response.getPiloteNationality = result[1];
        console.log(result[0]);
        response.getPiloteEcurie = result[2]
        response.getNationalities = result[3];
        response.getEcuries = result[4];

        response.render('editPilote',response);
     });   

}

module.exports.ajoutPilotes = function(request,response){
    response.title = "Ajout d'un pilote";
    async.parallel([
        function(callback){
            model.getPilotes(function(err,result){callback(err,result)});
        },
    ],
       function(err,result){
        if(err){
            console.log(err);
            return;
        }
        response.piloteInfo = result[0];
        console.timeLog(result[0]);

        response.render('ajouterPilotes',response);
       }
    );
};


module.exports.resultatsGP = function(request, response){
    response.title = "Choix d'un GP";
    async.parallel([
        function(callback){
            model.getAllGP(function(err, result){callback(err, result)});
        },
    ],
    function(err, result){
        if(err) {
            console.log(err);
            return;
        }

        response.getAllGP = result[0];

        console.log(result[0])

        response.render('choixGP', response);
    }
    );
};

module.exports.ajoutEcuries = function(request, response) {
    response.title = "Ajout d'une ecurie";
    async.parallel([
        function(callback){
            model.getEcuriesInfo(function(err, result){callback(err, result)});
        },
    ],
    function(err,result){
        if(err){
            console.log(err);
            return;
        }
        response.ecuriesInfo = result[0];
        console.log(result[0]);

        response.render('ajouterEcuries',response);
       }
    );
};

module.exports.addSponsors = function(request, response) {
    response.title = "Ajout d'un sponsor";
    async.parallel([
        function(callback) {
            model.getAllEcuries(function(err, result){callback(err, result)});
        },
        function(callback) {
            model.getCountSponsor(function(err2, result2){callback(err2, result2)});
        },
    ],
    function(err,result){
        if(err){
            console.log(err);
            return;
        }
        response.getAllEcuries = result[0];
        response.getCountSpons = result[1];
        console.log(result[0]);
        console.log(result[1]);
        response.render('ajouterSponsor', response);
    });
};

module.exports.addEcuries = function(request, response) {
    response.title = "Ajout d'une écurie";
    async.parallel([
        function(callback) {
            model.getEcuriePays(function(err, result){callback(err, result)});
        },
        function(callback){
            model.getCountEcurie(function(err2, result2){callback(err2, result2)});
        },
    ],
    function(err,result){
        if(err){
            console.log(err);
            return;
        }
        response.ecuriePays = result[0];
        response.countEcur = result[1];
        console.log(result[1]);
        response.render('ajouterEcurie',response);
    }
    );
};

module.exports.addCircuits = function(request, response) {
    response.title = "Ajout d'un circuit";
    async.parallel([
        function(callback){
            model.getCircuitsPays(function(err, result){callback(err, result)});
        },
        function(callback){
            model.getCountCircuit(function(err2, result2){callback(err2, result2)});
        },
    ],
    function(err,result){
        if(err){
            console.log(err);
            return;
        }
        response.circuitPays = result[0];
        response.countCir = result[1];

        console.log(result[0]);

        response.render('ajouterCircuits',response);
       }
    );
};


module.exports.addPilotes = function(request,response){
    response.title = "Ajout d'un pilote";
    async.parallel([
        function(callback){
            model.getPilotes(function(err,result){callback(err,result)});
        },
        function(callback){
            model.getNationalities(function(err2, result2){callback(err2, result2)});
        },
        function(callback){
            model.getEcuries(function(err3, result3){callback(err3, result3)});
        },
        function(callback){
            model.getCountPilotes(function(err4, result4){callback(err4, result4)});
        }
    ],
       function(err,result){
        if(err){
            console.log(err);
            return;
        }
        response.piloteInfo = result[0];
        response.piloteNationalities = result[1];
        response.piloteEcuries = result[2];
        response.countPilotes = result[3];
        console.log(result[3]);

        response.render('addPilotes',response);
       }
    );
};

module.exports.ajoutSponsorValid = function(request, response) {
    response.title = "Ajout d'un sponsor";

    form.parse(request, function(err, fields) {
        let idSpons = fields.idSpons;
        let nomSpons = fields.nomSponsor;
        let sectAct = fields.sectActivite;
        let ecurieSpons = fields.ecurieSpons;


        model.addSponsor(idSpons, nomSpons, sectAct, ecurieSpons);
        if(err){
            console.log(err);
            return;
        }

        response.render('validation',response);
    });
};

module.exports.ajoutEcurieValid = function(request, response) {
    response.title = "Ajout d'une écurie";
    let data = request.body;

    console.log(data);

    file = request.files.photoEcurie;
    file.mv("../user/public/image/ecurie/"+file.name);
    console.log(file.name);

    model.addEcurie(data, file.name, function(err, result){
        if(err){
            console.log(err);
            return;
        }
        response.render('validation', response);
        });
   
};

module.exports.ajoutCircuitsValid = function(request, response) {

    response.title = "Ajout d'un citcuit";
    let data = request.body;

    file = request.files.photoCircuit;
    file.mv("../user/public/image/circuit/"+file.name);

    model.addCircuits(data, file.name, function(err, result){
        if(err){
            console.log(err);
            return;
        }
        response.render('validation', response);
        });
    };


module.exports.AddResultToGP = function(request, response){
    response.title = "ajouter un résultat";

    let data = request.body;
    console.log(data);
    async.parallel([
        function(callback){
            model.addResult(data, function(err, result){callback(err, result)});
        },
    ],
    function(err, result){
        if (err) {
            console.log(err);
            return;
        }
            response.redirect('/resultats/' + data.idGP)
        });

};



module.exports.ajoutPiloteValid = function(request, response){
    response.title = "Ajout d'un pilote";

    let data = request.body;

    console.log(data);
    file = request.files.photoPilote;
    console.log(file.name);
    file.mv("../user/public/image/pilote/"+file.name);

        async.parallel([
            function(callback)
            {
                model.addPilotes(data, function(err, result){callback(err, result)});
            },
      
            function(callback)
            {
                model.AjoutPhoto(file.name, function (err2, result2){callback(err2, result2)});
            }
        ],
        function(err, result){
            if (err) {
                console.log(err);
                return;
            }
            response.render('validation',response);
        });
};

module.exports.editEcurieValid = function(request, response){
    response.title = "Modif d'une écurie";
    form.parse(request, function(err, fields){
        let idEcur = fields.idEcur;
        let nomEcur = fields.nomEcurie;
        let direcEcur = fields.directeurEcurie;
        let paysEcur = fields.paysEcur;
        let adrSiege = fields.adrSiege;
        let pointEcur = fields.ptsEcurie;

        model.editEcurie(idEcur, nomEcur, direcEcur, paysEcur, adrSiege, pointEcur);
        if(err){
            console.log(err);
            return;
        }
        response.render('validation',response);
    });
};



module.exports.editCircuitValid = function(request, response){
    response.title = "Modif de circuit";
    form.parse(request, function(err, fields){
        let idCir = fields.idCir;
        let nomCir = fields.nomCircuit;
        let longueurCir = fields.longueurCircuit;
        let paysCir = fields.paysCircuit;
        let nbSpectateurs = fields.nbSpectateurs;
        let descriptionCircuit = fields.descriptionCircuit;

        model.editCircuit(idCir, nomCir, longueurCir, paysCir, nbSpectateurs, descriptionCircuit);
        if(err){
            console.log(err);
            return;
        }
        response.render('validation',response);

    });
};


module.exports.editPiloteValid = function(request, response){
    response.title = "Modif de pilotes";
    form.parse(request, function(err, fields){
        let idPil = fields.idPil;
        let nomPil = fields.nomPilote;
        let prePil = fields.prenomPilote;
        let dateNaisPil = fields.naissancePilote;
        let nationalitePil = fields.natioPilote;
        let ecuriePil = fields.ecuriePilote;
        let pointPil = fields.pointsPilote;
        let poidsPil = fields.poidsPilote;
        let taillePil = fields.taillePilote;
        let descrPil = fields.descriptionPilote;



        model.editPilote(idPil, prePil, nomPil, dateNaisPil, nationalitePil, ecuriePil, pointPil, poidsPil, taillePil, descrPil);
        if(err){
            console.log(err);
            return;
        }
        response.render('validation',response);

    });
};


module.exports.deleteResultatFromId = function(request, response) {
    let data = request.params.id;
    model.deleteRes(data, function(err, result){
        if(err) {
            console.log(err);
            return;
        }

        response.redirect("/resultats/" + data);
    });
    };




module.exports.deleteSponsorFromId = function(request, response) {
    let data = request.params.id;
    model.deleteSponsorFromId(data, function(err, result){
        if(err) {
            console.log(err);
            return;
        }
    response.render('suppression', response);
    });
};

module.exports.deletePiloteFromId = function(request, response){
    let data = request.params.id;
    model.deletePiloteFromId(data,function(err,result){
        if(err) {
            console.log(err);
            return;
        }
    response.render('suppression', response);

    });
};

module.exports.deleteEcurieFromId = function(request, response){
    let data = request.params.id;
    model.deleteEcurieFromid(data, function(err, result){
        if(err){
            console.log(err);
            return;
        }
        response.render('suppression', response);
    });
};

module.exports.deleteCircuitFromId = function(request, response){
    let data = request.params.id;
    model.deleteCircuitFromId(data, function(err, result){
        if(err){
            console.log(err);
            return;
        }
        response.render('suppression', response);
    });
};

module.exports.resultatsGPFromId = function(request, response){
    response.title = "Résultat GP";
    let data = request.params.id;
    async.parallel([
        function(callback) {
            model.getResultats(data, function(err, result){callback(err, result)});
        },
        function(callback){
            model.getCountResultatsGP(data, function(err2, result2){callback(err2, result2)});
        },
        function(callback){
            model.getPilotesNotInGP(data, function(err3, result3){callback(err3, result3)});
        },
    ],
    function(err,result){
        if(err){
            console.log(err);
            return;
        }
        response.resultats = result[0];
        response.countResultats = result[1];
        response.pilotesOut = result[2];
        response.data = data;

        console.log(data);
    response.render('resultatGP', response)
});
};

module.exports.ajoutSponsors = function(request, response) {
    response.title = "Gestion des sponsors";
    async.parallel([
        function(callback) {
            model.getSponsors(function(err, result){callback(err, result)});
        },
        function(callback){
            model.getCountSponsor(function(err2, result2){callback(err2, result2)});
        },
    ],
    function(err,result){
        if(err){
            console.log(err);
            return;
        }
        response.SponsorInfo = result[0];
        response.countSpons = result[1];
        console.log(result[0]);

        response.render('addSponsors', response);
    });
};


module.exports.ajoutCircuits = function(request, response) {
    response.title = "Gestion des circuits";
    async.parallel([
        function(callback){
            model.getCircuits(function(err,result){callback(err,result)});
        },
        function(callback){
            model.getCountCircuit(function(err2, result2){callback(err2, result2)});
        },
    ],
       function(err,result){
        if(err){
            console.log(err);
            return;
        }
        response.circuitInfo = result[0];
        response.countCir = result[1];
        console.log(result[1]);



        response.render('addCircuits',response);
    });
};