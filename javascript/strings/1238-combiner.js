const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const caseLength = Number(lines.shift());

for (let caseI = 0; caseI < caseLength; caseI++) {
  const string = lines.shift();

  const [stringA, stringB] = string.split(" ").map(item => item.split(""));

  const lastIndex = stringA.length >  stringB.length ? stringA.length : stringB.length;

  const finalString = [];

  for (let i = 0; i < lastIndex; i++) {
    const currentA = stringA[i] || false;
    if (currentA) {
      finalString.push(currentA);
    }
    
    const currentB = stringB[i] || false;
    if (currentB) {
      finalString.push(currentB);
    }
  }
  
  console.log(finalString.join(""));
}
