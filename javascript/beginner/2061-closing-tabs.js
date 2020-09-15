const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const str = lines.shift();

let [initialTabs, actionsLength] = str.split(" ").map(item => Number(item));

for (let act = 0; act < actionsLength; act++) {
  const currentAction = lines.shift();

  if (currentAction === "fechou") {
    initialTabs++;
  } else {
    initialTabs--;
  }
}

console.log(initialTabs);
