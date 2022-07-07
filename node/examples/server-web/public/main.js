const example = 'OOHHHH MA GAAA';
console.log(example);

const loadData = async () => {
    const response = await fetch('htttp://localhost:3001');
    
    console.log('resposta do servidor', await response.json());
};

loadData();