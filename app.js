let express         = require('express'),
    session         = require('express-session'),
    cookieParser    = require('cookie-parser'),
    bodyParser      = require('body-parser'), //pour récupérer les résultats des post
	 handlebars  	  = require('express-handlebars'), hbs,
	 http = require('http'),
	 path = require('path');

let app = express();

app.use(bodyParser.urlencoded({extended: true}));
app.set('port', 6800);
app.set('views', path.join(__dirname, 'views'));

// routes static, le routeur n'y aura pas accès
app.use(express.static(path.join(__dirname+ '/public')));

app.use(cookieParser());

app.use(session({
    secret: 'nC0@#1pM/-0qA1+é',
    name: 'GrandPrix',
    resave: true,
    saveUninitialized: true
}));

/* ces lignes permettent d'utiliser directement les variables de session dans handlebars
 UTILISATION : {{session.MaVariable}}  */
app.use(function(request, response, next){
       response.locals.session = request.session;
       next();
});

/* express-handlebars - https://github.com/ericf/express-handlebars
*  Handlebars : moteur de template pour Express.
* il va gérer les vues
*/
hbs = handlebars.create({
   defaultLayout: 'main', // nom de la page par defaut ici main.handlebars (structure de base HTML)

   partialsDir: ['views/partials/'] // le vues partielles (le code HTML qui se répète dans toutes les pages)
   // les vues qui changent suivant le choix de l'utilisateur sont à la racine du répertoire : views
});

app.engine('handlebars', hbs.engine);
app.set('view engine', 'handlebars');

// chargement du routeur
require('./router/router')(app);

http.createServer(app).listen(app.get('port'), function(){
  console.log('Serveur Node.js en attente sur le port ' + app.get('port'));
});
