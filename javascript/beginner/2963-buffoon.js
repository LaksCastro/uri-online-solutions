const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const numeroCand = Number(lines.shift());
const joaoVotos = Number(lines.shift());

let joaoEleito = true;

Array.from({ length: numeroCand }).forEach((_, i) => {
  const candidatoVotos = Number(lines.shift());
  
  if (candidatoVotos > joaoVotos) {
    joaoEleito = false;
  }
});

console.log(joaoEleito ? "S" : "N");
