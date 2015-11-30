//
//  main.swift
//  exception
//
//  Created by HackerU on 30/11/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import Foundation

func max(numbers:[Int]) throws ->Int{
    if numbers.count == 0{
        throw NSError(domain: "", code: 1, userInfo: nil)
    }
    var res = numbers[0]
    for var i = 1; i < numbers.count; i++ {
        if numbers[i] > res{
            res = numbers[i]
        }
    }
    return res
}

let nums = [4,6,7,2,9]
//let nums = [Int]()

do{
    let m = try max(nums)
    print(m)
}catch{
    print("error")
}
print("done")
