const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

let getout = false;

while (!getout) {
  const str = lines.shift();

  const [failKey, originalValue] = str.split(" ");

  if (failKey === "0" && originalValue === "0") {
    getout = true;
    continue;
  }

  const regex = new RegExp(failKey, "g");

  let realValue =
    originalValue
      .replace(regex, "")
      .replace(/^0*/g, "") || "0";

  console.log(realValue);
}
