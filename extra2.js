var x = 0;
var arr = [1, 3, 2, 7, 8, 5, 3, 4];
for (var i in arr) {
    if (i > 3)
        x += arr[i];
}
console.log(x);