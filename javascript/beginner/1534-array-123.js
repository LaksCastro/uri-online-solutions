const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

while (true) {
  const str = lines.shift();

  if (!str) {
    break;
  }

  const n = Number(str);

  let oneI = 0;
  let twoI = n - 1;

  for (let x = 0; x < n; x++) {
    let output = "";
    
    for (let y = 0; y < n; y++) {
      let current = "";

      if (y === oneI) {
        current = "1";
      }

      if (y === twoI) {
        current = "2";
      }

      if (current === "") {
        current = "3";
      }

      output += current;
    }
    
    console.log(output);

    oneI++;
    twoI--;
  }
}
