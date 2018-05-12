var total = 0;
var even = 0;

for (x = 1, y = 1; x <= 10; x++, y++) {
    if ((y % 2) == 0) {
        even = even + y;
    }
    total = total + x;
}

console.log(even);
console.log(total);