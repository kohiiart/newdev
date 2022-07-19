const validator = (body = {}, valid = []) =>{
    const attrs = Object.keys(body);
      const invalidFields = [];

      attrs.forEach(attr => {
        if(!valid.includes(attr)){
          invalidFields.push(attr)
        }
      });

    return invalidFields
}

module.exports = validator