//
//  main.swift
//  draw rectangle
//
//  Created by HackerU on 26/11/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import Foundation

func drawRectangle(width: Int, height: Int){
    
    var str: String = ""
    
    for var i = 0; i < height; i++ {
        if i == 0 || i == height - 1{
            str = ""
            for var j = 0; j < width; j++ {
                str += "*"
            }
        }else{
            str = "*"
            for var j = 1; j < width - 1; j++ {
                str += " "
            }
            str += "*"
        }
        print(str)
    }
}

drawRectangle(10, height: 5)

