const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const salary = Number(lines.shift());

let percent;

if (salary <= 400) {
  percent = 15;
} else if (salary > 400 && salary <= 800) {
  percent = 12;
} else if (salary > 800 && salary <= 1200) {
  percent = 10;
} else if (salary > 1200 && salary <= 2000) {
  percent = 7;
} else {
  percent = 4;
}

const reajust = salary * (percent / 100);
const newSalary = salary + reajust;
console.log("Novo salario: " + newSalary.toFixed(2));
console.log("Reajuste ganho: " + reajust.toFixed(2));
console.log("Em percentual: " + percent + " %");
