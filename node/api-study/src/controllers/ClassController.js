const knex = require('../databases/knex');
const fieldValidator = require('../utils/FieldValidator')

exports.create = async (req, res) => {
    try {
        const InvalidFields = fieldValidator(req.body, ['title', 'description', 'videoId', 'instructorId', 'courseId'])
        
        if(InvalidFields.length || !Object.keys(req.body).length){
            return res.status(400).send({status: 'Requisição inválida!', InvalidFields})
        }

        const requiredFieldsExists = [];
        const requiredFields = ['title', 'videoId', 'instructorId', 'courseId'];
        requiredFields.forEach(requiredField => {
        if (!req.body[requiredField]) {
            requiredFieldsExists.push(requiredField);
        }
        });

        if (requiredFieldsExists.length) {
        return res.status(400).send({
            status: 'Campos obrigatórios não informados:',
            requiredFields: requiredFieldsExists
        });
        }

        const [course] = await knex.select('*').from("courses").where({id: Number(req.body.courseId)});

        if(!course){
            return res.status(404).send({status: `Curso de ID: ${req.body.courseId} não encontrado!`})
        }

        const [instructor] = await knex.select('*').from("instructor").where({id: Number(req.body.instructorId)});

        if(!instructor){
            return res.status(404).send({status:`Instrutor de ID: ${req.body.instructorId} não encontrado!`})
        };

        const {title, videoId, description} = req.body;
        const [classCreatedId] = await knex.insert({
            title: title,
            videoId: videoId,
            instructorId: instructor,
            courseId: course,
            description: description ? description:null
        }).into('class')

        const [classCreated] = await knex.select('*').where({id: classCreatedId})


        return res.status(200).send({status: 'sucesso'})
    } catch (e) {
      return res.status(500).send({ error: e?.message || e });
    }
}