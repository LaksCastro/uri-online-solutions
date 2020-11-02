const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

while (true) {
  const text = lines.shift().toLowerCase();
  
  if (!text) {
    break;
  }
  
  const words = text.split(" ");

  let alliterations = 0;
  let lastLetter = words[0].charAt(0);
  let lastAlliteration = null;

  for (let i = 1; i < words.length; i++) {
    const word = words[i];
    const currentLetter = word.charAt(0);

    if (lastLetter === currentLetter) {
      if (currentLetter !== lastAlliteration) {
        alliterations++;
        lastAlliteration = currentLetter;
      }
      lastLetter = currentLetter;
    } else {
      lastLetter = currentLetter;
      lastAlliteration = null;
    }
  }

  console.log(alliterations);
}
