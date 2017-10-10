var cars = ["BMW", "Volvo", "Saab", "Ford"];
var i = 0;
var text = "";

while (cars[i]) {
    text += cars[i] + "\n";
    i++;
}
//execute as long as there are elements in the array

console.log(text);