const http = require('http');
const URL = require('url');
const fs = require('fs');
const path = require('path');
let users = require('./users.json');

const getUsers = (request, response) => {
  const { name, lastName, age, remove } = URL.parse(request.url, true).query;
  let message = '';
  if (name) {   
    const user = {
        name, lastName, age
      } 
    if (remove) {
        message = 'Registro removido'
        const found =  users.filter(user => String(user.name) == String(name));
        users = users.filter(user => String(user.name) !== String(name));

        if (!found.length){
            return response.end('User not found')
        }

    } else {
      users.push(user);
      message = 'Registro salvo!'
    }
    fs.writeFile(
      path.join(__dirname, 'users.json'),
      JSON.stringify(users, null, 2),
      (error) => {
        if (error) return;

        console.log('Salvou o registro com sucesso');
        response.end(JSON.stringify({
            status: message,
            data: user, 
        }
        ));
      }
    );
  } else{
    response.end(JSON.stringify(users));
  }
}

const server = http.createServer(getUsers);

server.listen(3001, () => {
  console.log('API listening on http://localhost:3001');
});
