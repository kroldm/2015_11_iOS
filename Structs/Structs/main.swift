//
//  main.swift
//  Structs
//
//  Created by HackerU on 30/11/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import Foundation

struct Rectangle {
    var x:Int = 0;
    var y:Int = 0;
    var width:Int = 0;
    var heigth:Int = 0;
    
    func description()->String{
        return "x:\(x), y:\(y), width:\(width), height:\(heigth)"
    }
}

var myRect = Rectangle()
myRect.heigth = 20
myRect.x = 1
print(myRect.description())

