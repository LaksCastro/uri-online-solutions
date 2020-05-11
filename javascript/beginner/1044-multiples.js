const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const [a, b] = lines.shift().split(" ").map(item => Number(item));

if(a === b){
    console.log("Sao Multiplos");
}else if(a > b){
    if(a % b === 0){
        console.log("Sao Multiplos");
    }else{
        console.log("Nao sao Multiplos");
    }
}else{
    if(b % a === 0){
        console.log("Sao Multiplos");
    }else{
        console.log("Nao sao Multiplos");
    }
}
