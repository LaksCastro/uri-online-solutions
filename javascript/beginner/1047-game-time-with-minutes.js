const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const entrada = lines.shift();

const valores = entrada.split(" ").map(valor => Number(valor));

const [hInicial, minInicial, hFinal, minFinal] = valores;

const useODiaSeguinte = hInicial > hFinal || minInicial > minFinal;

const base = new Date();

const dataInicial = new Date(
  base.getFullYear(),
  base.getMonth(),
  base.getDate(),
  hInicial,
  minInicial
);

const dataFinal = new Date(
  base.getFullYear(),
  base.getMonth(),
  useODiaSeguinte ? base.getDate() + 1 : base.getDate(),
  hFinal,
  minFinal
);

const difMili = dataFinal - dataInicial;
let difHoras = Math.floor((difMili % 86400000) / 3600000);
let difMinutos = Math.round(((difMili % 86400000) % 3600000) / 60000);

if (!difHoras && !difMinutos) difHoras = 24;

console.log(`O JOGO DUROU ${difHoras} HORA(S) E ${difMinutos} MINUTO(S)`);
