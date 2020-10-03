package main

import (
  "fmt"
  "strconv"
)

func main() {
  var n1 int
  var n2 int

  fmt.Scanln(&n1)
  fmt.Scanln(&n2)

  var sum = n1 + n2

  fmt.Println("X = " + strconv.Itoa(sum))
}
