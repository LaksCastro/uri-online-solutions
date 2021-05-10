const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const l1 = lines.shift().split(' ');
const l2 = lines.shift().split(' ');

const target = lines.shift();

const index = l1.indexOf(target);

if (target == 'nao') {
  l1.push(...l2);
} else {
  l1.splice(index, 0, ...l2);
}

console.log(l1.join(' '));
