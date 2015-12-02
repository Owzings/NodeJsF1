var model = require('../models/ecurie.js');

   // //////////////////////// L I S T E R  C I R C U I T S

/*
<!--
* listeEcurie contient par exemple :
* [
* { ecunum: 5, payadrdrap: 'AAA',ecunom:'rrr' },
* { ecunum: 6, payadrdrap: 'BAA' ,ecunom:'ggg'},
* { ecunum: 7, payadrdrap: 'ACA' ,ecunom:'kkkk'}
*  ]
*
* response.title est passé à main.handlebars via la vue ListerEcurie
* il sera inclus dans cette balise : <title> {{title}}</title>
*/

module.exports.ListerEcurie = function(request, response){
   response.title = 'Liste des écuries';

   model.getListeEcurie( function (err, result) {
        if (err) {
            // gestion de l'erreur
            console.log(err);
            return;
        }
   response.listeEcurie = result;
   response.render('listerEcurie', response);
        });
};
