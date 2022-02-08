// TODO: write your code here
let q = 0;
let p = 0;
const array1 = document.querySelectorAll("#player1-race td");
const array2 = document.querySelectorAll("#player2-race td");

document.addEventListener('keyup', (event) => {
  const key = event.key;
  // Alert the key name and key code on keydown
  if (key === "q") {
    q += 1;
    if (q > 9) {
      q = 0;
      p = 0;
      document.querySelector("h2").innerHTML = "Winner: Player 1";
    }
    const active1 = document.querySelector("#player1-race .active");
    active1.classList.remove("active");
    const active2 = document.querySelector("#player2-race .active");
    active2.classList.remove("active");
    const newActive1 = array1[q];
    newActive1.classList.add("active");
    const newActive2 = array2[p];
    newActive2.classList.add("active");
  }
  if (key === "p") {
    p += 1;
    if (p > 9) {
      q = 0;
      p = 0;
      document.querySelector("h2").innerHTML = "Winner: Player 2";
    }
    const active2 = document.querySelector("#player2-race .active");
    active2.classList.remove("active");
    const active1 = document.querySelector("#player1-race .active");
    active1.classList.remove("active");
    const newActive2 = array2[p];
    newActive2.classList.add("active");
    const newActive1 = array1[q];
    newActive1.classList.add("active");
  }
}, false);
