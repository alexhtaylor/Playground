// number of vowels in a string
// function getCount(str) {
//   var m = str.match(/[aeiou]/gi);
//   return m === null ? 0 : m.length;
// }

// console.log(getCount("Hello"));

// function sumTwoSmallestNumbers(numbers) {
//  return numbers.sort((a,b)=>a-b)[0] + numbers[1]
// }
// console.log(sumTwoSmallestNumbers([1, 4, 5, 2, 10]));

// function isTriangle(a,b,c) {
//   const sorted = [a, b, c].sort((a,b)=>a-b)
//   return (sorted[2] - sorted[1] - sorted[0] >= 0) ? false : true;
// }

// console.log(isTriangle(5, 11, 6))

// function sortArray(array) {
//   let odd = []
//   array.forEach(element => {
//     if (element % 2 != 0) {
//       odd.push(element)
//     }
//   });
//   odd.sort((a,b)=>a-b)
//   j = 0
//   for (let i = 0; i < array.length; i++) {
//     if (array[i] % 2 != 0)
//     {
//       array[i] = odd[j]
//       j += 1
//     }
//   };
//   return array
// }
// console.log([1, 3, 2, 9, 8, 5])
// console.log(sortArray([1, 3, 2, 9, 8, 5]))

// function findMissingLetter(array)
// {
//   newArray = []
//   for ( i = 0; i < array.length; i++ ) {
//     if (i == 0) {
//     newArray.push(array[0].charCodeAt());
//     }
//     else if (array[i].charCodeAt() - newArray[0] != 1) {
//       return String.fromCharCode(array[i].charCodeAt() - 1);
//     }
//     else {
//       newArray[0] = array[i].charCodeAt();
//     }
//   }
// }

// console.log(findMissingLetter(['a', 'b', 'c', 'd', 'f']))

// String.fromCharCode(97) gives the letterof the number 97 .charCodeAt() gives the number of the letter.



// finding prime numbers. sqrt is used to limit the number of factors to be checked because a numbers factors will be symmetrical pairs pivoting around the square root: ie for 36: (2,18), (4,9), (6,6), (9,4), (18,2)

// function isPrime(num) {
//   for(let i = 2, s = Math.sqrt(num); i <= s; i++) {
//     if(num % i === 0) return false;
//   }
// return num > 1;
// }
// console.log(isPrime(-5));

function descendingOrder(n){
  array =  n.toString().split('');
  for (let i = 0; i < array.length; i ++) {
    array[i] = parseInt(array[i])
  };
  return array.sort((a,b)=>b-a).join("");

}

console.log(descendingOrder(0));
