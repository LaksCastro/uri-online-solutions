const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

for (const line of lines) {
  if (!line) break;

  const [velocity, time] = line.split(' ').map((item) => Number(item));

  const result = (velocity * time * 2).toString();

  console.log(result === '-0' /* WTF JS??? */ ? '0' : result);
}
