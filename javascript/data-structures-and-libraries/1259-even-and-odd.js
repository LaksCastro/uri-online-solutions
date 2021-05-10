const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

class Stack {
  constructor() {
    this.stack = [];
    this.currentIndex = -1;
  }

  stackUp(value) {
    this.currentIndex++;

    this.stack[this.currentIndex] = value;
  }

  getStack() {
    return this.stack;
  }

  sort(order) {
    const func = order === "asc" ? (a, b) => a - b : (a, b) => b - a;
    this.stack.sort(func);
  }
}

const casesLength = lines.shift();

const odd = new Stack();
const even = new Stack();

for (let i = 0; i < casesLength; i++) {
  const num = Number(lines.shift());

  if (num % 2 === 0) {
    even.stackUp(num);
  } else {
    odd.stackUp(num);
  }
}

even.sort("asc");
odd.sort("desc");

even.getStack().forEach((num) => console.log(num));
odd.getStack().forEach((num) => console.log(num));
