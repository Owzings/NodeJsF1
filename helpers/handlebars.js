function hbsHelpers(handlebars) {
  return handlebars.create({
    helpers: {
      inc: function(value, options) {
        console.log('Ok Passe');
        return parseInt(value) + 1;
      }

      // More helpers...
    }

  });
}

module.exports = hbsHelpers;

/*



module.exports = function(){
    hbs.registerHelper('cond', function (v1, operator, v2, options) {
        switch (operator) {
            case '==':
                return (v1 == v2) ? options.fn(this) : options.inverse(this);
            case '===':
                return (v1 === v2) ? options.fn(this) : options.inverse(this);
            case '<':
                return (v1 < v2) ? options.fn(this) : options.inverse(this);
            case '<=':
                return (v1 <= v2) ? options.fn(this) : options.inverse(this);
               case '>':
                return (v1 > v2) ? options.fn(this) : options.inverse(this);
               case '>=':
                return (v1 >= v2) ? options.fn(this) : options.inverse(this);
            case '&&':
                return (v1 && v2) ? options.fn(this) : options.inverse(this);
            case '||':
                return (v1 || v2) ? options.fn(this) : options.inverse(this);
            default:
                return options.inverse(this);
        }
    });
};
*/
