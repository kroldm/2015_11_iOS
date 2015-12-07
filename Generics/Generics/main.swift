//
//  main.swift
//  Generics
//
//  Created by HackerU on 07/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import Foundation

class Boat<T> {
    var passenger:[T]
    
    init(pass:[T]){
        self.passenger = pass
    }
    
    func getFirstPassenger()->T{
        return passenger[0]
    }
}

class Animal {
    
}

var pass = [Animal()]
var boat:Boat<Animal> = Boat<Animal>(pass: pass)
