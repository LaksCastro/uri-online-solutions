const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const casesLength = Number(lines.shift());

for (let caseIndex = 0; caseIndex < casesLength; caseIndex++) {
    const num = Number(lines.shift());
    
    if (num === 0) {
        console.log("NULL");
    } else {
        const signal = num > 0 ? "POSITIVE" : "NEGATIVE";
        const even = num % 2 === 0 ? "EVEN" : "ODD";
        
        console.log(even + " " + signal);
    }
}
