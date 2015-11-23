//
//  main.swift
//  Lesson02
//
//  Created by HackerU on 19/11/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import Foundation

typealias YesNo = Bool

var f:YesNo = true

for i in 1 ..< 10{
    print(i)
}
for i in 1 ... 10{
    print(i)
}
for _ in 1 ... 10{
    print("hi")
}

for var i = 0; i < 10; i++ {
    print(i)
}

var x = 0
while x < 10 {
    print(x)
    x++
}


func myFunc(x:Int, y:Int)->Int{
    print("in my func \(x + y)")
    return x + y
}
let res = myFunc(8, y: 2)
print(res)

func myFunc1(x:Int, y:Int)->(Int, Int){
    let plus:Int = x + y
    let minus:Int = x - y
    return (plus,minus)
}
let (plus,minus) = myFunc1(8, y: 2)
print("plus = \(plus), minus = \(minus)")

