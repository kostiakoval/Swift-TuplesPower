# Swift-TuplesPower
Power of Tuples in Swift

This is code example for this article:

```swift
func sum(x: Int, y: Int) -> Int {
  return x + y
}

func sum1(# x: Int, y: Int) -> Int {
  return x + y
}

func sum2(# x: Int, #y: Int) -> Int {
  return x + y
}

func sum3(one x: Int, two y: Int) -> Int {
  return x + y
}

func sum4(x: Int, y: Int, maybe: Int? = nil) -> Int {
  return x + y + (maybe ?? 0)
}

func sum5(x: Int, y: Int, maybe: Int?) -> Int {
  return x + y + (maybe ?? 0)
}

sum(1, 1)
sum1(x: 1, 2)
sum2(x: 1, y: 3)
sum3(one: 1, two: 4)

sum4(1, 5, maybe: 1)
sum4(1, 5)

sum5(1, 5, 2)
sum5(1, 5, nil)

//sum((1,1))

let params = (1,1)
let params1 = (x:1, 2)
let params2 = (x:1, y:3)
let params3 = (one:1, two:4)

// Optional
let params4 = (1, 5, maybe:1)
let params41 = (1, 5, maybe:Optional<Int>.None)
let params42 = (1, 5, maybe:Optional<Int>.Some(1))

let m: Int? = nil
let params5 = (1, 5, m)
let params6 = (1, 5, maybe: Optional<Int>.Some(1))
let params7 = (1, 5, 3)
let params8 = (1, 5, Optional<Int>.None)
let params9 = (1, 5, Optional<Int>.Some(1))

sum(params)
sum1(params1)
sum2(params2)
sum3(params3)

//sum4 - always fails :(
sum5(params5)
sum5(params8)
sum5(params9)

//

//Fails

//Fails
//sum4(params)
//sum4(params4)
//sum4(params41)
//sum4(params42)
//sum4(params5)
//sum4(params6)

//sum5(params)
//sum5(params6)
//sum5(params7)

// Fails
//sum(params2)
//sum(params3)
//sum(params4)

struct C {
  let c: Int
}

let cInit = (1)
let cInit1 = (c: 11)
let cInit2 = (It_Works: 10);
C(c: 123)
C(c: cInit1)
C(c: cInit2)

// Fails
//C(cInit1)
//let cInit2 = (11, 12)
//C(c: cInit2)

struct S {
  let x: Int
  let y: Int
  let maybe: String?
}

class SS {
  let x: Int
  let y: Int
  let maybe: String?

  init (_ x: Int, _ y: Int, _ maybe: String?) {
    self.x = x
    self.y = y
    self.maybe = maybe
  }
}


let sInit = (x: 1, y: 1, maybe: "Hello")
let sInit1 = (1, 1, "Hello")
let sInit2 = (x: 1, 1, "Hello")

S(x: 1, y: 0, maybe: nil)
SS(10, 11, "Yes")

// Fails
//SS(sInit)
//SS(sInit1)
//SS(sInit2)

struct A {

  func sum(x: Int, y: Int) -> Int {
    return x + y
  }

  static func sum1(x: Int, y: Int) -> Int {
    return x + y
  }
}

let aParams = (1, y:4)

A()
let a = A()

a.sum(1, y: 1)
a.sum(aParams)
A.sum1(aParams)


// Part 2
// It's coming! Definitely coming!

```

## Author

Kostiantyn Koval, [@KostiaKoval](https://twitter.com/KostiaKoval)

