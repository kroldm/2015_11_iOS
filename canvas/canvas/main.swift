//
//  main.swift
//  canvas
//
//  Created by HackerU on 30/11/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import Foundation

func createCanvas(inout canvas:[[Bool]]){
    for _ in 0 ..< 50 {
        var row:[Bool] = [Bool]()
        for _ in 0 ..< 50 {
            row.append(false)
        }
        canvas.append(row)
    }
}

func drawCanvas(canvas:[[Bool]]){
    for i in 0 ..< canvas.count {
        var line = ""
        for j in 0 ..< canvas[i].count {
            line += canvas[i][j] ? "*" : " "
        }
        print(line)
    }
}

var canvas:[[Bool]] = [[Bool]]()

createCanvas(&canvas)
canvas[0][49] = true
drawCanvas(canvas)