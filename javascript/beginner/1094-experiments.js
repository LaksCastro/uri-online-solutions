const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const cases = Number(lines.shift());

const animals = {
  C: {
    name: "coelhos",
    count: 0
  },
  R: {
    name: "ratos",
    count: 0
  },
  S: {
    name: "sapos",
    count: 0
  },
  getTotal: function() {
    return this.C.count + this.R.count + this.S.count;
  },
  getPercentOf: function(animal) {
    const targetCount = this[animal].count;
    
    const total = this.getTotal();
    
    const percent = (targetCount * 100) / total;
    
    return percent.toFixed(2);
  }
};

for (let caseIndex = 0; caseIndex < cases; caseIndex++) {
  const experiment = lines.shift();
  
  const [quantity, animal] = experiment.split(" ");
  
  animals[animal].count += Number(quantity);
}

console.log("Total: " + animals.getTotal() + " cobaias");
console.log("Total de coelhos: " + animals.C.count);
console.log("Total de ratos: " + animals.R.count);
console.log("Total de sapos: " + animals.S.count);
console.log("Percentual de coelhos: " + animals.getPercentOf("C") + " %");
console.log("Percentual de ratos: " + animals.getPercentOf("R") + " %");
console.log("Percentual de sapos: " + animals.getPercentOf("S") + " %");
