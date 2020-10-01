const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const casesLength = Number(lines.shift());

let caseIndex = 0;

while (caseIndex < casesLength) {
  const [a, b] = lines.shift().split(" ");

  if (b.length > a.length) {
    console.log("nao encaixa");
  } else {
    const substring = a.substring(a.length - b.length);
    
    if (substring === b) {
      console.log("encaixa");
    } else {
      console.log("nao encaixa");
    }
  }
  
  caseIndex++;
}
