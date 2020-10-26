const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const foods = {
  "suco de laranja": 120,
  "morango fresco": 85,
  mamao: 85,
  "goiaba vermelha": 70,
  manga: 56,
  laranja: 50,
  brocolis: 34,
};

while (true) {
  const t = Number(lines.shift());

  if (!t) {
    break;
  }

  let total = 0;

  for (let i = 0; i < t; i++) {
    let [qtd, ...name] = lines.shift().split(" ");
    name = name.join(" ");

    total += foods[name] * qtd;
  }

  if (total < 110) {
    console.log("Mais " + (110 - total) + " mg");
  } else if (total > 130) {
    console.log("Menos " + (total - 130) + " mg");
  } else {
    console.log(total + " mg");
  }
}
