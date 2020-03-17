for (let i = 1, j = 7; i <= 9 || j <= 13; i += 2, j += 5) {
  for (x = 0; x < 3; x++) {
    console.log("I=" + i + " J=" + j);
    j--;
  }
}
