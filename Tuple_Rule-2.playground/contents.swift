// Playground - noun: a place where people can play

import Cocoa

func sum(x: Int, y: Double) {} // no names (,)
let params = (1, 1.0) //no names

sum(params) // works fine

func other(# x: Int, # y: Double) // name (x, y)
other(params) //Fails

let paramsOther = (x: 1, y: 1.0) //name (x, y)
other(paramsOther) //Works!
