const express = require('express');
const routes = express.Router();

const IndexController = require('./controllers/IndexController');
const CourseController = require('./controllers/CourseController');
const ClassController = require('./controllers/ClassController');
const InstructorController = require('./controllers/InstructorController');

//INDEX
routes.get('/', IndexController.index);

//COURSE
routes.get('/courses', CourseController.findAll);
routes.post('/courses', CourseController.create);
/*routes.get('/courses:id', CourseController.getById);
routes.delete('/courses', CourseController.deleteById);
routes.put('/courses', CourseController.put);*/

//INSTRUCTORS
routes.post('/instructor', InstructorController.create);

//CLASS
routes.post('/class', ClassController.create)

module.exports = routes