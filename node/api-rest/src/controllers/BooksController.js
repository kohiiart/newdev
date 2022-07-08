exports.findBooks = (request, response) =>{
    const query = request.query
    return response.status(200).send('Procurando Livros')
};

exports.createBook = (request, response) =>{
    console.log('Creating Book', request.body)
    return response.status(200).send('Postando mais Livros')
};

exports.getBookID = (request, response) =>{
    const params = request.params
    console.log('Query params Books', params)
    return response.status(200).send(`Finding Book with the ID ${params.id}`)
};

exports.deleteBook = (request, response) =>{
    const params = request.params
    console.log('Query params: Delete Books', params)
    return response.status(200).send(`Removing Book with the ID ${params.id}`)
};

exports.putBook = (request, response) =>{
    const params = request.params
    console.log('Query params: Put Books', params)
    return response.status(200).send(`Puting Book with the ID ${params.id}`)
};

exports.patchBook = (request, response) =>{
    const params = request.params;
    console.log('Query params: Patch Books', params)
    return response.status(200).send(`Patching Book with the ID ${params.id}`)
}