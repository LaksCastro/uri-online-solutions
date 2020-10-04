const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const ddd = Number(lines.shift());

let message = "";

switch(ddd){
  case 61: message = "Brasilia"; break;
  case 71: message = "Salvador"; break;
  case 11: message = "Sao Paulo"; break;
  case 21: message = "Rio de Janeiro"; break;
  case 32: message = "Juiz de Fora"; break;
  case 19: message = "Campinas"; break;
  case 27: message = "Vitoria"; break;
  case 31: message = "Belo Horizonte"; break;
  default: message = "DDD nao cadastrado"; break;
}

console.log(message);
