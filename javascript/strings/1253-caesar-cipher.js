const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const cases = Number(lines.shift());

for (let caseInd = 0; caseInd < cases; caseInd++) {
  const str = lines.shift();
  const key = Number(lines.shift());

  let newStr = "";

  for (let i = 0; i < str.length; i++) {
    const code = str.charCodeAt(i);

    let newCode = code - key;

    if (newCode < 65) {
      newCode = 91 - (65 - newCode);
    }

    newStr += String.fromCharCode(newCode);
  }

  console.log(newStr);
}
