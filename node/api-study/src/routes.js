const express = require('express');
const routes = express.Router();

const IndexController = require('./controllers/IndexController');
const CourseController = require('./controllers/CourseController');
const ClassController = require('./controllers/ClassController');
const InstructorController = require('./controllers/InstructorController');

//INDEX
routes.get('/', IndexController.index);

module.exports = routes