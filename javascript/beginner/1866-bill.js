const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const caseLength = Number(lines.shift());

for(let caseIndex = 0; caseIndex < caseLength; caseIndex++){
  const num = Number(lines.shift());
  
  if(num % 2 === 0) console.log("0");
  else console.log("1");
}
