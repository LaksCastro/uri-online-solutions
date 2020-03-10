const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

let salary = Number(lines.shift());

if (salary <= 2000) {
  console.log("Isento");
} else {
  if (salary > 2000 && salary <= 3000) {
    salary -= 2000;
    const taxe1 = salary * 0.08;
    console.log("R$ " + taxe1.toFixed(2));
  } else if (salary > 3000 && salary <= 4500) {
    salary -= 2000;
    salary -= 1000;
    const taxe1 = 1000 * 0.08;
    const taxe2 = salary * 0.18;
    console.log("R$ " + (taxe1 + taxe2).toFixed(2));
  } else if (salary > 4500) {
    salary -= 2000;
    salary -= 1000;
    salary -= 1500;
    const taxe1 = 1000 * 0.08;
    const taxe2 = 1500 * 0.18;
    const taxe3 = salary * 0.28;
    console.log("R$ " + (taxe1 + taxe2 + taxe3).toFixed(2));
  }
}
