const os = require('os');

const system = os.platform();

function checkMemory(){
    const mem = parseInt(os.freemem() /1024 / 1024);

    const total = parseInt(os.totalmem() /1024 / 1024);
    
    const percentage = parseInt((mem/total)*100)
    
    const statistics = {
        totalMemory: `${total}`,
        freeMemory: `${mem}`,
        percentageMemory: `${percentage}%`
    }
    console.clear()
    console.table(statistics);
}


setInterval(() => {
    checkMemory();
}, 1000);