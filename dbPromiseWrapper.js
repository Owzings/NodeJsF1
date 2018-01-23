let db = require(__dirname+'/configDb')

module.exports.query = (sql, params = []) => new Promise(
	(resolve, reject) => {

		db.getConnection((err, connection) => {

			if (err){

				console.log(err)
				reject("Erreur lors de la connexion à la BDD.")

			} else {

				connection.query(sql, params, (err, result) => {

					if (err){

						console.log(err)

						let nicesql = '\n\n '+sql.replace(/  +/g, ' ').replace(/\t/g, '')+'\n'

						reject(`Erreur lors de l'exécution de la requête SQL : ${nicesql}`)

					} else {

						connection.release()

						resolve(result)

					}

				})

			}

		})

	}
)
