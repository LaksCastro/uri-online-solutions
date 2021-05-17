var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var value = input.split('\n');

var n = [10]

for (var i = 0; i < 10; i++){
    n [i] = Number(value.shift());
}
for (var i = 0; i < 10; i++){
    if (n[i] <= 0)
    n[i] = 1;
}
for (var i = 0; i < 10; i++){
    console.log("X["+ i +"] = " + n[i]);
}
