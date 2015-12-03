//
//  main.swift
//  sort array
//
//  Created by HackerU on 03/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import Foundation

func isBigger(num1:Int, num2:Int)->Bool{
    return num1 > num2
}

func sortArray(inout arr:[Int], compareRule:(Int, Int)->Bool){
    var isSorted:Bool = false
    var lastIndex:Int = arr.count - 1
    while(!isSorted){
        isSorted = true
        for var i = 0; i < lastIndex; i++ {
            if compareRule(arr[i], arr[i + 1]){
                let tmp:Int = arr[i]
                arr[i] = arr[i + 1]
                arr[i + 1] = tmp
                isSorted = false
            }
        }
        lastIndex--
    }
}

var myArr = [2,3,5,1,6,4,8,7,9]
sortArray(&myArr, compareRule: isBigger)
print(myArr)
