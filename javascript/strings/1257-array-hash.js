const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const getIndex = a => a.charCodeAt() - 65;

const cases = Number(lines.shift());

for (let cas = 0; cas < cases; cas++) {
  const l = Number(lines.shift());
  
  let sum = 0;

  for (let k = 0; k < l; k++) {
    const str = lines.shift();

    str.split("").forEach((item, i) => {
      const value = getIndex(item) + i + k;

      sum += value;
    });
  }

  console.log(sum);
}
