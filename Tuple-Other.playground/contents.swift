// Playground - noun: a place where people can play

import Cocoa

//Default value
func sum4(x: Int, y: Int, maybe: Int = 1) -> Int {
  return x + y + maybe
}

sum4(1, 5, maybe: 1)
sum4(1, 5)

let params4 = (1, 5, 1)
let params4_1 = (1, 5, maybe: 1)

sum4(params4) //Fails
sum4(params4_1) //Fails

// Optional
func sum5(x: Int, y: Int, maybe: Int?) -> Int {
  return x + y + (maybe ?? 0)
}

let params5 = (1, 5, 3)
let params5_1 = (1, 5, Optional<Int>.None)

sum5(params5) //Fails, 3 is not optional
sum5(params5_1)

struct A {
  let c: Int

  func sum(x: Int, y: Int) { }
  static func sum1(x: Int, y: Int) { }
}

let aParams = (1, y:4)

let a = A(c: 0)
a.sum(aParams)
A.sum1(aParams)

// inline Tuples
a.sum((1, y:1)) // Fails


let aInit = (1)
let aInit1 = (c: 11)
let aInit2 = (It_Works: 10);
let aInit3 = (1, 10);
A(c: aInit)
A(c: aInit2)
A(c: aInit3) //Fails
