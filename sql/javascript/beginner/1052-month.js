const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

const month = Number(lines.shift());

let message = "";

switch(month){
    case 1: message = "January"; break;
    case 2: message = "February"; break;
    case 3: message = "March"; break;
    case 4: message = "April"; break;
    case 5: message = "May"; break;
    case 6: message = "June"; break;
    case 7: message = "July"; break;
    case 8: message = "August"; break;
    case 9: message = "September"; break;
    case 10: message = "October"; break;
    case 11: message = "November"; break;
    case 12: message = "December"; break;
}

console.log(message);
