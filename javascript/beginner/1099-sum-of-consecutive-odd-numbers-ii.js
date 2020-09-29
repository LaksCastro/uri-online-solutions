const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const cases = Number(lines.shift());

for (let caseI = 0; caseI < cases; caseI++) {
  const string = lines.shift();
  
  const [a, b] = string.split(" ").map(item => Number(item));

  if (a === b || a + 1 === b || b + 1 === a) {
    console.log("0");
  } else {
    let sum = 0;
    
    let [numA, numB] = a > b ? [a, b + 1] : [b, a + 1];
    
    for (; numB < numA; numB++) {
      if (numB % 2 !== 0) {
        sum += numB;
      }
    }
    
    console.log(sum);
  }
}
