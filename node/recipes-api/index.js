console.log('funcionando');

const http = require('http');
const URL = require('url');
const path = require('path');
const fs = require('fs');
let recipes = require('./recipes.json')

const server = http.createServer((request, response)=> {
    const { name, amount, remove } = URL.parse(request.url, true).query;
    let message = ''

    if(name){
        const recipe = {
            name,
            amount
        };
        recipes.push(recipe)
        message='tudo certo'

        if(remove){
            message='Receita Removida'
        }

        fs.writeFile(
            path.join(__dirname, "recipes.json"),
            JSON.stringify(recipes, null, 2),
            (error) => {
              if (error) return;
      
              response.end(
                JSON.stringify({
                  status: message,
                  data: user,
                })
              );
            }
          );
          
          response.end(JSON.stringify(recipes));
        }   else {
            response.end(JSON.stringify(recipes));
        }
        
});

server.listen(3001, () => {
    console.log("API listening on http://localhost:3001");
  });