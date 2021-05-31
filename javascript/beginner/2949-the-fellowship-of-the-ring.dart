const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const r = {};

const n = Number(lines.shift());

for(let i = 0; i < n; i++) {
  const c = lines[i];
  const l = c.length - 1;
  
  r[c[l]] = (r[c[l]] || 0) + 1;
}

console.log(`${r['X'] || 0} Hobbit(s)`);
console.log(`${r['H'] || 0} Humano(s)`);
console.log(`${r['E'] || 0} Elfo(s)`);
console.log(`${r['A'] || 0} Anao(s)`);
console.log(`${r['M'] || 0} Mago(s)`);
