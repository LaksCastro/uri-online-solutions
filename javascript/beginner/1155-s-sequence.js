let s = 1;

for (let divisor = 2; divisor <= 100; divisor++) {
  const currentDiv = 1 / divisor;
  
  s += currentDiv;
}

console.log(s.toFixed(2));
