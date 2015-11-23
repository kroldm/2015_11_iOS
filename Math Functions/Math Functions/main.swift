//
//  main.swift
//  Math Functions
//
//  Created by HackerU on 19/11/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import Foundation

func distance(x: Int, y: Int)->Int{
    
    var from:Int
    var to:Int
    
    if x < y {
        from = x
        to = y
    }else{
        from = y
        to = x
    }
    
    var counter = 0
    while from + counter < to {
        counter++
    }
    
    return counter
}

print(distance(8, y: 4))

func product(x: Int, y: Int)->Int{
    
    var sum:Int = 0
    
    for var i = 0; i < y; i++ {
        sum += x
    }
    
    return sum
}

print(product(5, y: 8))
