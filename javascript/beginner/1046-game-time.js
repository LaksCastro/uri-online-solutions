const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const [init, end] = lines.shift().split(" ").map(item => Number(item));

if (init === end) {
  console.log("O JOGO DUROU 24 HORA(S)");
} else {
  if (init > end) {
    const currentDayTime = 24 - init;
    const totalTime = currentDayTime + end;
    console.log("O JOGO DUROU " + totalTime + " HORA(S)");
  } else {
    const totalTime = end - init;
    console.log("O JOGO DUROU " + totalTime + " HORA(S)");
  }
}
