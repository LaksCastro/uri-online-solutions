const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

let inter = 0;
let gremio = 0;
let tie = 0;

let grenaisCount = 0;

while (true) {
  const [interG, gremioG] = lines
    .shift()
    .split(" ")
    .map(item => Number(item));

  if (interG > gremioG) {
    inter++;
  } else if (interG < gremioG) {
    gremio++;
  } else {
    tie++;
  }
 
  grenaisCount++;

  console.log("Novo grenal (1-sim 2-nao)");
  
  const response = lines.shift();
  
  if (response === "2") {
    break;
  }
}

console.log(`${grenaisCount} grenais`);
console.log(`Inter:${inter}`);
console.log(`Gremio:${gremio}`);
console.log(`Empates:${tie}`);
console.log(`${inter > gremio ? "Inter" : "Gremio"} venceu mais`);
