const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const leds = [6, 2, 5, 5, 4, 5, 6, 3, 7, 6];

const caseTestLength = Number(lines.shift());

for (let i = 0; i < caseTestLength; i++) {
  let ledQuantity = 0;

  const value = lines.shift();

  const valueArray = value.split("");

  for (let i = 0; i < valueArray.length; i++) {
    const item = Number(valueArray[i]);
    ledQuantity += leds[item];
  }

  console.log(`${ledQuantity} leds`);
}
