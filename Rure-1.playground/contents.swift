import Cocoa

func sum(x: Int, y: Double) {} // type (Int, Int)
let params = (1, 1.0) //type (Int, Int)
let paramsWrongOrder = (1.0, 1) //type (Int, Int)
let oneParam = (1) //type (Int)

sum(params) // works fine
sum(oneParam) //Fails
sum(paramsWrongOrder)

func other(x: Int, y: String) {} // type (Int, String)
other(params) //Fails
