const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const day1 = Number(lines.shift().split(" ")[1]);
const [hour1, min1, seconds1] = lines
  .shift()
  .split(":")
  .map(item => Number(item.trim()));

const day2 = Number(lines.shift().split(" ")[1]);
const [hour2, min2, seconds2] = lines
  .shift()
  .split(":")
  .map(item => Number(item.trim()));

const base = new Date();

const initialDate = new Date(
  base.getFullYear(),
  3,
  day1,
  hour1,
  min1,
  seconds1
);
const finalDate = new Date(base.getFullYear(), 3, day2, hour2, min2, seconds2);

const difMili = finalDate - initialDate;

const difDays = Math.floor(difMili / (1000 * 60 * 60 * 24));
const difHoras = Math.floor((difMili / (1000 * 60 * 60)) % 24);
const difMinutos = Math.floor((difMili / (1000 * 60)) % 60);
const difSeconds = Math.floor((difMili / 1000) % 60);

console.log(`${difDays} dia(s)`);
console.log(`${difHoras} hora(s)`);
console.log(`${difMinutos} minuto(s)`);
console.log(`${difSeconds} segundo(s)`);
