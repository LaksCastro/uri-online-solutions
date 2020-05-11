const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const casesLength = Number(lines.shift());
let caseIndex = 0;

for (let caseIndex = 0; caseIndex < casesLength; caseIndex++) {
  const string = lines.shift();
  const words = string.split("");

  for (let i = 0; i < words.length; i++) {
    const word = words[i];
    const wordCode = word.charCodeAt();

    if (toBeBetween(wordCode, 65, 90) || toBeBetween(wordCode, 97, 122)) {
      words[i] = String.fromCharCode(wordCode + 3);
    }
  }

  words.reverse();

  const lastIndex = words.length - 1;
  const isPar = words.length % 2 === 0;
  const halfIndex = Math.floor(lastIndex / 2) + (isPar ? 1 : 0);
  const secondHalf = words.splice(halfIndex, isPar ? halfIndex : halfIndex + 1);

  for (let i = 0; i < secondHalf.length; i++) {
    const wordCode = secondHalf[i].charCodeAt();
    secondHalf[i] = String.fromCharCode(wordCode - 1);
  }

  console.log(words.concat(secondHalf).join(""));

  function toBeBetween(num, min, max) {
    return num >= min && num <= max;
  }
}
