//
//  main.swift
//  Extensions
//
//  Created by HackerU on 07/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import Foundation

class Person {
    var name:String = "name"
    var age:Int = 0
}

extension Person{
    func goToSleep(){
        print("sleeping")
    }
}

var p:Person = Person()
p.goToSleep()