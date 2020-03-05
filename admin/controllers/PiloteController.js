let model = require('../models/pilote.js');
let async = require('async');
const util = require('util');
// ///////////////////////// R E P E R T O I R E    D E S    P I L O T E S

module.exports.Repertoire = 	function(request, response){
   response.title = 'Répertoire des pilotes';

      response.render('repertoirePilotes', response);
  } 

module.exports.ListerFirstLetterPilote = function(request, response) {
   response.title = "Liste des première lettres des pilotes";
   model.getFirstLetterNomPilote( function(err, result) {
      if(err){
         console.log(err);
         return;
      }
      response.pilFirstLetter = result;
      response.render('repertoirePilotes', response);
   });
}

module.exports.PiloteStartingByLetter = function(request, response) {
   response.title = "Info sur les pilotes";
   let data = request.params.lettre;
   async.parallel([
      function(callback){
         model.getInfoFromFirstLetter(data, function(err, result){callback(err, result)});
      },
      function(callback){
         model.getFirstLetterNomPilote(function(err2, result2){callback(err2, result2)});
      }

   ],
   function(err,result){
      if(err){
          console.log(err);
              return;
      }
      response.piloteInfo = result[0];
      response.pilFirstLetter = result[1];
      response.render('repertoirePilotes',response);
   });   
}

module.exports.PiloteInfo = function(request, response) {
   let data = request.params.id;
   response.title = "Info sur un pilote spéficique";
   async.parallel([
      function(callback){
         model.getInfoPiloteGeneric(data, function(err, result){callback(err, result)});
      },
      function(callback){
         model.getPiloteSponsor(data, function(err2, result2){callback(err2, result2)});
      },
      function(callback){
         model.getPiloteNationality(data, function(err3, result3){callback(err3, result3)});
      },
      function(callback){
         model.getPiloteEcurie(data, function(err4, result4){callback(err4, result4)});
      },
      function(callback){
         model.getPiloteMainPhoto(data, function(err5, result5){callback(err5, result5)});
      },
      function(callback){
         model.getFirstLetterNomPilote(function(err6, result6){callback(err6, result6)});
      },
      function(callback){
         model.getPiloteAllPhotos(data, function(err7, result7){callback(err7, result7)});
      }
   ],
   function(err,result){
      if(err){
          console.log(err);
              return;
      }

      response.infoPiloteGeneric = result[0];
      response.piloteSponsor = result[1];
      response.piloteNationality = result[2];
      response.piloteEcurie = result[3];
      response.piloteMainPhoto = result[4];
      response.pilFirstLetter = result[5];
      response.pilAllPhotos = result[6];
      // console.log(util.inspect(result[0], {showHidden: false, depth: null}));
      console.log(util.inspect(result[4], {showHidden: false, depth: null}));
      response.render('detailPilote', response);
   });
}
