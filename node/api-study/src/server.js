const express = require('express');
const cors = require('cors');

console.log('Funcionando')

const routes = require('./routes');
const app = express()

const PORT = 3001;

app.use(cors());
app.use(express.json());
app.use(routes);

app.listen(PORT, () => {
  console.log(`API is listening on port ${PORT} `)
});