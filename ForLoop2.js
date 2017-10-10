for (var i = 1; i <= 2; i++) { //this is the outer loop

    console.log(i);

    for (var j = 2; j <= 3; j++) { // inner loop
        console.log(j * i);
    }

}

/* first is i = 1 and the console outputs 1, when it continues to the inner Loop, j = 2, 2*1 is 2, then j = 3,
3*1 is 3, then it goes back to the outer loop, i = 2, and it outputs 2, in the inner loop for j = 2 it outputs 4,
 for j = 3 it outputs 6 */