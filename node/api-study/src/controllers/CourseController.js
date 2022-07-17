const database = require('../databases/knex');

exports.findAll = async (request, response) => {
    try {
      const sql = await database
        .select(
          ['courses.title', 'courses.id']
        )
        .from('courses')
        
      return response.status(200)
        .send({
          courses: sql
        });
    } catch (error) {
      logger(error.message);
      return response.status(500)
        .send({ error: error?.message || e });
    }
  };