const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const casosTeste = Number(lines.shift());

for (let i = 0; i < casosTeste; i++) {
  const entrada = lines.shift();
  
  const one = Number(entrada.substring(2, 4));
  const two = Number(entrada.substring(5, 8));
  const three = Number(entrada.substring(11, 13));
  
  console.log(one + two + three);
}
