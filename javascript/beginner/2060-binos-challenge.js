const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

let multiples = {
  "2": {
    count: 0
  },
  "3": {
    count: 0
  },
  "4": {
    count: 0
  },
  "5": {
    count: 0
  }
};

const getKeys = func => Object.keys(multiples).forEach(func);

const addMultiple = a =>
  getKeys(key => {
    a % Number(key) === 0 && multiples[key].count++;
  });

const n = Number(lines.shift());

const arr = lines
  .shift()
  .split(" ")
  .forEach(item => addMultiple(Number(item)));

getKeys(key => console.log(multiples[key].count + " Multiplo(s) de " + key));
