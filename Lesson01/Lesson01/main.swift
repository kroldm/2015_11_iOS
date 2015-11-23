//
//  main.swift
//  Lesson01
//
//  Created by HackerU on 16/11/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import Foundation

print("Hello, World!")

let i:Int = 2;
let f:Float = 3.14;
let b:Bool = true;

print("i = \(i), f = \(f), b = \(b)");

let c:Character = "a"

//tuples
let rectangle1 = (0, 0, 200, 100);
print(rectangle1.2);

let rectangle2 = (x: 0, y: 0, width: 200, height: 100);
print(rectangle2.width);

let (x, y, width, height) = rectangle1;
print(width);
let (_, _, width1, height1) = rectangle1;

//optionals
var s:String?;
print(s);

var s1:String?;
s1 = "abc"

if s1 != nil{
    print(s1!);
}
else{
    print("s is nil")
}

if let valueOfS1 = s1{
    print(valueOfS1)
}




