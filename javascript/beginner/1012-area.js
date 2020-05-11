const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const [a, b, c] = lines
  .shift()
  .split(" ")
  .map(item => Number(item));
  
const pi = 3.14159;

const triangulo = (a * c) / 2;
const circulo = pi * c ** 2;
const trapezio = ((a + b) * c) / 2;
const quadrado = b ** 2;
const retangulo = a * b;

console.log(`TRIANGULO: ${triangulo.toFixed(3)}`);
console.log(`CIRCULO: ${circulo.toFixed(3)}`);
console.log(`TRAPEZIO: ${trapezio.toFixed(3)}`);
console.log(`QUADRADO: ${quadrado.toFixed(3)}`);
console.log(`RETANGULO: ${retangulo.toFixed(3)}`);
