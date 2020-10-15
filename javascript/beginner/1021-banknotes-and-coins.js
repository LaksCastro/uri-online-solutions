const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

let valor = lines.shift();

const notas = [100, 50, 20, 10, 5, 2];
const moedas = [1, 0.5, 0.25, 0.1, 0.05, 0.01];

let trocoNotas = [];
let trocoMoedas = [];

function calculaTroco(valor, valores, troco, continueDecimal) {
  for (let i = 0; i < valores.length; i++) {
    const resto = Number((valor % valores[i]).toFixed(2));
    const qtdNotas = Math.trunc(valor / valores[i]);
    
    if (resto === valor) {
      troco.push(0);
    } else {
      troco.push(qtdNotas);
      valor = resto;
    }
  }
  
  return valor;
}

valor = calculaTroco(valor, notas, trocoNotas);

if (valor !== 0) {
  valor = calculaTroco(valor, moedas, trocoMoedas);
}

if (!trocoMoedas.length) {
  trocoMoedas = moedas.map(() => 0);
}

console.log("NOTAS:");

trocoNotas.forEach((item, i) => {
  console.log(`${item} nota(s) de R$ ${notas[i].toFixed(2)}`);
});

console.log("MOEDAS:");

trocoMoedas.forEach((item, i) => {
  console.log(`${item} moeda(s) de R$ ${moedas[i].toFixed(2)}`);
});
