//
//  main.swift
//  Targils1
//
//  Created by HackerU on 26/11/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import Foundation

var myArray: [Int] = [Int]()
myArray.append(1)
myArray.append(2)
myArray.append(3)
myArray.append(4)
myArray.append(5)

var myArray2: [Int] = [Int]()
myArray2.append(3)
myArray2.append(4)
myArray2.append(5)

func bigestNum(arr:[Int])->Int{
    var bNum:Int = arr[0]
    for num in arr{
        if num > bNum{
            bNum = num
        }
    }
    return bNum
}
print(bigestNum(myArray))

func average(arr:[Int])->Double{
    var sum:Int = 0
    for num in arr{
        sum += num
    }
    return Double(sum) / Double(arr.count)
}
print(average(myArray))

func convert(inout arr:[Int]){
    var tmp:Int
    for var i = 0; i < arr.count / 2; i++ {
        tmp = arr[i]
        arr[i] = arr[arr.count - 1 - i]
        arr[arr.count - 1 - i] = tmp
    }
}
convert(&myArray)
convert(&myArray)
print(myArray)

func included(arr1:[Int], arr2:[Int])->Bool{
    var i:Int = 0
    var res:Bool = false
    for var j = 0; j < arr1.count; j++ {
        if arr1[j] == arr2[i]{
            if i < arr2.count - 1{
                i++
                res = true
            }else{
                return res
            }
        }else{
            res = false
        }
    }
    return res
}
print(included(myArray, arr2: myArray2))

