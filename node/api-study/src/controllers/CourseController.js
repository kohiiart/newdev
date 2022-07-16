const database = require('../databases/knex');

exports.findAll = async (request, response) => {
    try {
      const sql = await database
        .select(
          ['course.title']
        )
        .from('course')
        
      
      return response.status(200)
        .send({
          course: sql
        });
    } catch (error) {
      logger(error.message);
      return response.status(500)
        .send({ error: error?.message || e });
    }
  };