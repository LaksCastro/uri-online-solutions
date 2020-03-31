const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

let arr = [];

for(let i = 0; i < 20; i++){
    arr[i] = lines.shift();
}

arr.reverse();

for(let i = 0; i < 20; i++){
    console.log("N[" + i + "] = " + arr[i]);
}
