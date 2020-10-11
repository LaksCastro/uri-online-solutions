const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const lengthCases = Number(lines.shift());

for (let i = 0; i < lengthCases; i++) {
  const phrase = lines.shift();

  const letters = phrase
    .replace(/ /g, "")
    .replace(/,/g, "")
    .split("");

  let allLetters = [];

  for (let i = 0; i < letters.length; i++) {
    const letter = letters[i];
    const letterIndex = letter.charCodeAt();
    
    const [exists] = allLetters.filter(item => item === letterIndex);
    
    if (!exists) {
      allLetters.push(letterIndex);
    }
  }

  const qtdLetters = allLetters.length;

  if (qtdLetters === 26) {
    console.log("frase completa");
  } else if (qtdLetters >= 13) {
    console.log("frase quase completa");
  } else {
    console.log("frase mal elaborada");
  }
}
