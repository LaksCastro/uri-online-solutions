const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const entrada = lines.shift();

const [A, B, C, D] = entrada.split(" ").map(item => Number(item));

const BMaiorC = B > C;
const DMaiorA = D > A;
const SomaCD = C + D;
const SomaAB = A + B;
const SomaCDMaiorSomaAB = SomaCD > SomaAB;
const APar = A % 2 === 0;

if (BMaiorC && DMaiorA && SomaCDMaiorSomaAB && C > 0 && D > 0){
  console.log("Valores aceitos");
} else{
  console.log("Valores nao aceitos")
}
