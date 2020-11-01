const input = require("fs").readFileSync("/dev/stdin", "utf8");
const lines = input.split("\n");

while (true) {
  let str = lines.shift();

  if (!str) {
    break;
  }

  str = str.replace(/  */g, " ");
  str = str.split(" ");

  let wordsLettersCount = 0;
  let wordsLength = 0;

  for (let i = 0; i < str.length; i++) {
    const word = str[i];

    const dotIndex = word.search(/\./g);

    let isInvalid =
      word.search(/[0-9]/g) !== -1 &&
      (dotIndex !== -1 ? dotIndex !== word.length - 1 : true);

    if (isInvalid || !word) {
      continue;
    }

    wordsLength++;
    wordsLettersCount += word.replace(/\./g, "").length;
  }

  const wordsAverage = Math.floor(
    wordsLength ? wordsLettersCount / wordsLength : 0
  );

  if (wordsAverage <= 3) {
    console.log("250");
  } else if (wordsAverage <= 5) {
    console.log("500");
  } else if (wordsAverage >= 6) {
    console.log("1000");
  }
}
