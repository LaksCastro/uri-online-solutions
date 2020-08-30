const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const [id, qtd] = lines.shift().split(" ").map(item => Number(item));

let price = 0;

switch(id){
  case 1: 
    price = 4;
  break;
  case 2: 
    price = 4.5;
  break;
  case 3: 
    price = 5;
  break;
  case 4: 
   price = 2;
  break;
  case 5: 
    price = 1.5;
  break;
}

const total = price * qtd; 

console.log(`Total: R$ ${total.toFixed(2)}`); 
