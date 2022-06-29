const http = require('http');
const URL = require('url')
const teams = require('./times.json');

console.log('times---> ', teams)

http.createServer((request, response)=>{
    
    const {nome, patrocinador} = URL.parse(request.url, true).query;
    
    if (nome || patrocinador){
        console.log(nome, patrocinador);
    }
    //responde pro cliente
    response.end(JSON.stringify(teams))

}).listen(5679, () => {
    console.log('API is running on port 5679')
});
