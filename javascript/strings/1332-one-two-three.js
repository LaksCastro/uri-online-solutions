const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const cases = Number(lines.shift());

for (let caseIndex = 0; caseIndex < cases; caseIndex++) {
  const str = lines.shift();

  if (str.length > 3) {
    console.log("3");
    continue;
  }

  const isOne = str.match(/.ne|o.e|on./);
  if (isOne) {
    console.log("1");
    continue;
  }

  const isTwo = str.match(/.wo|t.o|tw./);
  if (isTwo) console.log("2");
}
