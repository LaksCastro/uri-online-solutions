for (let i = 0; i <= 2; i += 0.2) {
  i = Number(i.toFixed(1));
  
  for (let j = i + 1; j <= i + 3; j++) {
    console.log("I=" + i + " J=" + j);
  }
}
