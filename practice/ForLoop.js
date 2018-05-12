var cars = ["BMW", "Volvo", "Saab", "Ford"];
var i = 0;
var text = "";
for (; cars[i];) {
    text += cars[i] + "\n";
    i++;
}

console.log(text);