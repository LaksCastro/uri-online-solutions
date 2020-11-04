const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

while (true) {
  let string = lines.shift();

  if (!string) {
    break;
  }

  const letters = string.split("");
  const formattedLetters = letters;

  let searchingItalicEndTag = false;
  let searchingBoldEndTag = false;

  for (let i = 0; i < letters.length; i++) {
    const letter = letters[i];

    const initItalicTag = "<i>";
    const endItalicTag = "</i>";

    const initBoldTag = "<b>";
    const endBoldTag = "</b>";

    if (letter === "_") {
      formattedLetters[i] = searchingItalicEndTag
        ? endItalicTag
        : initItalicTag;
      searchingItalicEndTag = !searchingItalicEndTag;
    } else if (letter === "*") {
      formattedLetters[i] = searchingBoldEndTag ? endBoldTag : initBoldTag;
      searchingBoldEndTag = !searchingBoldEndTag;
    }
  }
  
  console.log(formattedLetters.join(""));
}
