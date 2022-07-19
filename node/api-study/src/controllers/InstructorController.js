const knex = require('../databases/knex');
const fieldValidator = require('../utils/FieldValidator')

exports.create = async (request, response) => {
    const fieldsRequired = ['name', 'avatarUrl']
    try {
      const instructor = request.body;
      const invalidFields = fieldValidator(instructor, ['name', 'avatarUrl']);

      if(invalidFields.length) {
        return response.status(400).send({status: 'invalid request!', invalidFields})
      }

      const [instructorCreatedId] = await knex.insert(instructor).into('instructor');
      const [instructorCreated]=  await knex.select('*').from('instructor').where({id: instructorCreatedId});

      return response.status(200).send({status: 'success', data: instructorCreated});

    } catch (e) {
      return response.status(500).send({ error: e?.message || e });
    }
}