const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const thirdLink = Number(lines.shift());
const secondLink = thirdLink * 2;
const firstLink = secondLink * 2;

console.log(firstLink);
