const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

let valid = false;

const validPass = "2002";

while (!valid) {
  const pass = lines.shift();
  
  if (pass === validPass) {
    valid = true;
    
    console.log("Acesso Permitido");
    
    break;
  } else {
    console.log("Senha Invalida");
  }
}
