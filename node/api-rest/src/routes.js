const express = require('express')
const routes = express.Router()
const IndexController = require('./controllers/IndexController');
const AuthorControllers = require('./controllers/AuthorController')
const BooksControllers = require('./controllers/BooksController');

//Index Routes
routes.get('/', IndexController.index);

//Authors Routes
routes.get('/authors', AuthorControllers.findAll);
routes.post('/authors', AuthorControllers.create);

//Authors ID Routes
routes.get('/authors/:id', AuthorControllers.getByID);
routes.delete('/authors/:id', AuthorControllers.delete);
routes.put('/authors/:id', AuthorControllers.put);
routes.patch('/authors/:id', AuthorControllers.patch);

//Books Routes
routes.get('/books', BooksControllers.findBooks);
routes.post('/books', BooksControllers.createBook);

//Books ID Routes
routes.get('/books/:id', BooksControllers.getBookID);
routes.delete('/books/:id', BooksControllers.deleteBook);
routes.put('/books/:id', BooksControllers.putBook);
routes.patch('/books/:id', BooksControllers.patchBook);

module.exports = routes
