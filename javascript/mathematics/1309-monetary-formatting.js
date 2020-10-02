const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

while (true) {
  let value = lines.shift();

  if (!value) {
    break;
  }

  value = value.split("");

  const prefix = lines.shift();

  const reversed = value.reverse();

  const newValue = [];

  for (let i = 0; i < reversed.length; i++) {
    const char = reversed[i];

    if (i && i % 3 === 0) {
      newValue.push(",");
    }
    
    newValue.push(char);
  }

  console.log(
    "$" +
      newValue.reverse().join("") +
      "." +
      (Number(prefix) <= 9 ? `0${prefix}` : prefix)
  );
}
