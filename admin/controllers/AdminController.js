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

module.exports.ajoutCircuitsValid = function(request, response) {
    response.title = "Ajout d'un citcuit";

    form.parse(request, function(err, fields){
        let idCir = fields;
        let nomCir = fields.nomCircuit;
        let longueurCir = fields.longueurCircuit;
        // let oldpath = files.photoCircuit.path;
        // let newpath = "public\\image\\circuit\\"+ files.photoCircuit.name;
        // fs.copy(oldpath,newpath,function(err){
        //     if(err){
        //         throw err;
        //     }
        // });
        // let adr_photo = files.photoCircuit.name;
        // console.log(adr_photo);
        let nbSpectateurs = fields.nbSpectateurs;
        let description = fields.descriptionCircuit;
        let paysCircuit = fields.paysCircuit;

        model.addCircuits(idCir, nomCir, longueurCir, nbSpectateurs, description, paysCircuit);
        if(err){
            console.log(err);
            return;
        }

        response.render('validation',response);
    });
};

module.exports.ajoutPiloteValid = function(request, response){
    response.title = "Ajout d'un pilote";


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


        model.addPilotes(idPil, prePil, nomPil, dateNaisPil, nationalitePil, ecuriePil, pointPil, poidsPil, taillePil, descrPil);
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