function isPrimeNumber(n) 
{
  if (typeof(n) === 'number') {
    let isPrime = true;

    if (n < 2) {
      isPrime = false;
    }
  
    if (n == 2) {
      isPrime = true;
    } else {
      for (let j = 2; j < n; j++) {
        if (n % j == 0) {
          isPrime = false;
        }
      }
    }

    (isPrime) 
      ? console.log(n + ' is prime number')
      : console.log(n + ' is not prime number');
      
  } else {
    if (typeof(n) === 'object') {
      for (let i = 0; i < [n.length]; i++) {
        if (typeof(n[i]) === 'number') {
          let isPrime = true;

          if (n[i] <= 1) {
            isPrime = false;
          }
  
          if (n[i] == 2) {
            isPrime = true;
          } else{
            for (let j = 2; j < n[i]; j++) {
              if (n[i] % j == 0) {
                isPrime = false;
              }
            }
          }

          (isPrime) 
            ? console.log(n[i] + ' is prime number')
            : console.log(n[i] + ' is not prime number');

        } else {
          console.log('the array element is not a number');
        }
      }
    } else {
      console.log('the passed parameter is not an array or a number');
    }
  } 
}