var Number1 = 5;
var Number2 = -2;
var Number3 = 23;


if (Number1 > Number2 && Number1 > Number3) {
    if (Number2 > Number3) {
        console.log(Number1, Number2, Number3);
    } else {
        console.log(Number1, Number3, Number2);
    }
} else if (Number2 > Number1 && Number2 > Number3) {
    if (Number1 > Number3) {
        console.log(Number2, Number1, Number3);
    } else {
        console.log(Number2, Number3, Number1);
    }

} else if (Number3 > Number1 && Number3 > Number2) {
    if (Number1 > Number2) {
        console.log(Number3, Number1, Number2);
    } else {
        console.log(Number3, Number2, Number1);
    }
}