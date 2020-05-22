const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const [peopleQtd, paperQtd, paperForEachPeople] = lines[0].split(" ");

console.log(paperForEachPeople * peopleQtd > paperQtd ? "N" : "S");
