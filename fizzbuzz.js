var loopNumbers = function () {
        for (var i = 1; i <= 100; i++) {
        if  (i % 3 === 0 && i % 5 === 0)
            { console.log("FizzBuzz") }
    else if (i % 3 === 0)
            { console.log("Fizz") }
    else if (i % 5 === 0)
            { console.log("Buzz") }
       else { console.log(i)}
    } //closes for loop
}; //closes function

loopNumbers()


// if (the condition)
// {do this, computer!}
// else if (some other condition)
// {do this other thing};
