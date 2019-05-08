function fizz(x){
    let firstCollector = document.querySelector('input[name="firstNumber"]');
    let secondCollector = document.querySelector('input[name="secondNumber"]');
    this.name = firstCollector(x);

    function firstCollector(x){
    for (let x=1; x <= 100; x++) {
        if ( x % 3 == 0){
            console.log('Fizz');
        }
        else if (x % 5 == 0){
            console.log('Buzz')
        }
        else if (x % 3 ==0 && x % 5 ==0){
            console.log('FizzBuzz')
        }
}

let fizzbuzz = document.querySelector('#fizzbuzz');

if (fizzbuzz) {
    fizzbuzz.addEventListener( 'click', beginFB);
}
