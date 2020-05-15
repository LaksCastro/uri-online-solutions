const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const casesLength = Number(lines.shift());

for (let caseIndex = 0; caseIndex < casesLength; caseIndex++) {
  const level = Number(lines.shift());

  if (level <= 8000) {
    console.log("Inseto!");
    continue;
  }
  
  console.log("Mais de 8000!");
}
