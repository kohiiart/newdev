const database = require('../databases/knex');

exports.findAll = async (request, response) => {
    try {
      const sql = await database
        .select('*').from('courses')
        
      return response.status(200)
        .send({courses: sql});
    } catch (error) {
      logger(error.message);
      return response.status(500)
        .send({ error: error?.message || e });
    }
  };

  exports.create = async (request, response) => {
    try {
      await database('courses').insert(request.body);
  
      return response.status(200).send({
        status: 'success'
      });
    } catch (error) {
      return response.status(500).send({ error: error?.message || e });
    }
  }
  exports.getById = async (request, response) => {
    try {
      const params = request.params;
  
      const [previousCourse] = await database
        .select('*')
        .from('courses')
        .where({ id: params.id })
        .limit(1);
  
      if (!previousCourse) {
        return response.status(404) 
          .send(`O curso de id: ${params.id} não foi encontrado!`);
      }
      return response
        .status(200)
        .send({ data: previousCourse });
    } catch (error) {
      return response.status(500).send({ error: error?.message || e });
    }
  }
  
  exports.deleteById = async (request, response) => {
    try {
      const params = request.params;
  
      const [course] = await database
        .select('*')
        .from('courses')
        .where({ id: params.id })
        .limit(1);
  
      if (!course) {
        return response.status(404)
          .send(`O curso de id: ${params.id} não foi encontrado!`);
      }
  
      await database
        .delete()
        .from('courses')
        .where({ id: course.id });
  
      return response
        .status(200)
        .send({ status: 'Curso removido com sucesso!' });
    } catch (error) {
      return response.status(500).send({ error: error?.message || e });
    }
  }
  
  exports.put = async (request, response) => {
    try {
      const params = request.params;
  
      const [previousCourse] = await database
        .select('*')
        .from('courses')
        .where({ id: params.id })
        .limit(1);
  
      if (!previousCourse) {
        return response.status(404)
          .send(`O curso de id: ${params.id} não foi encontrado!`);
      }
  
      const nextCourse = request.body;
  
      await database
        .update({ name: nextCourse.name })
        .from('courses')
        .where({ id: previousCourse.id });
  
      return response
        .status(200)
        .send({ status: 'Curso atualizado com sucesso!', data: nextCourse });
    } catch (error) {
      return response.status(500).send({ error: error?.message || e });
    }
  }