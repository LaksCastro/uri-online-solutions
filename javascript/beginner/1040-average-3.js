const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const pesos = [2, 3, 4, 1];
const divisor = 10;

let dividendo = 0;

let numeros = lines.shift();
numeros = numeros.split(" ").map(item => Number(item));

for (let i = 0; i < 4; i++) {
  dividendo += numeros[i] * pesos[i];
}

const mediaPonderada = dividendo / divisor;

console.log(`Media: ${arredondar(mediaPonderada, 1)}`);

if (mediaPonderada >= 7) {
  console.log("Aluno aprovado.");
} else if (mediaPonderada < 5) {
  console.log("Aluno reprovado.");
} else {
  console.log("Aluno em exame.");
  
  let notaExame = lines.shift();
  
  notaExame = Number(notaExame);
  
  const mediaFinal = (mediaPonderada + notaExame) / 2;

  console.log(`Nota do exame: ${arredondar(notaExame, 1)}`);
  
  if (mediaFinal >= 5) {
    console.log("Aluno aprovado.");
  } else {
    console.log("Aluno reprovado.");
  }
  
  console.log(`Media final: ${arredondar(mediaFinal, 1)}`);
}

function arredondar(numero, casas) {
  return numero.toFixed(casas);
}
