package main

import (
	"fmt"
)

const pi = 3.14159

func main() {
	var r float64

	fmt.Scan(&r)

	a := pi * (r * r)

	fmt.Printf("A=%.4f\n", a)
}
