const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const credits = lines.shift();

const [a, b, c] = credits.split(" ").map(credit => Number(credit));

let isPossible = a + b === c || a + c === b || b + c === a;

if (!isPossible) isPossible = a - b === c || a - c === b || b - c === a;

if (!isPossible) isPossible = a === b || b === c || c === a;

console.log(isPossible ? "S" : "N");
