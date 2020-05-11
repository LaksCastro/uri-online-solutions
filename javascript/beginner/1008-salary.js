const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const id = lines.shift();

const horas = lines.shift();
const porHora = lines.shift();

const salario = horas * porHora;

console.log(`NUMBER = ${id}`); 
console.log(`SALARY = U$ ${salario.toFixed(2)}`); 
