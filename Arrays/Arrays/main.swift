//
//  main.swift
//  Arrays
//
//  Created by HackerU on 26/11/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import Foundation

var myArray: [Int] = [Int]()

myArray.append(8)
myArray.append(3)
myArray.insert(300, atIndex: 1)
myArray.removeAtIndex(1)
myArray.append(100)

for var i = 0; i < myArray.count; i++ {
    print(myArray[i])
}

for num in myArray{
    print(num)
}

var x = 8
func stam(inout num: Int){
    num++
}
stam(&x)
print(x)

func stam2(inout arr: [Int]){
    arr[1]++
}
stam2(&myArray)

var myDictionary:[String:Int]
myDictionary = [String:Int]()
myDictionary["hello"] = 3
if myDictionary.keys.contains("hello"){
    print("contains hello")
}
myDictionary.indexForKey("hello")
myDictionary.removeAtIndex(myDictionary.indexForKey("hello"))

for (key, value) in myDictionary{
    print("key:\(key) value:\(value)")
}












