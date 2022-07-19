const knex = require('../databases/knex');
const fieldValidator = require('../utils/FieldValidator')

exports.create = async (req, res) => {
    const fieldsRequired = ['title', 'description']
    try {
      const course = req.body;
      const invalidFields = fieldValidator(course, ['title', 'description']);

      if(invalidFields.length) {
        return res.status(400).send({status: 'invalid request!', invalidFields})
      }

      const [courseCreatedId] = await knex.insert(course).into('courses');
      const [courseCreated]=  await knex.select('*').from('courses').where({id: courseCreatedId});

      return res.status(200).send({status: 'success', data: courseCreated});

    } catch (e) {
      return res.status(500).send({ error: e?.message || e });
    }
}

exports.findAll = async (req, res) =>{
  try {
    const [allCourses]=  await knex.select('*').from('courses');
    return res.status(200).send({courses: allCourses})

  } catch (e) {
      return res.status(500).send({ error: e?.message || e });
  }
}