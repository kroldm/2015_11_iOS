//
//  main.swift
//  Initializers
//
//  Created by HackerU on 07/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import Foundation

class Person {
    var name:String
    var age:Int
    
    convenience init(){
        self.init(name: "", age: 0)
    }
    
    init(name:String, age:Int){
        self.name = name
        self.age = age
    }
    
    deinit{
        print("deinit of person")
    }
}

class Employee : Person {
    override init(name:String, age:Int){
        super.init(name: name, age: age)
    }
}

var p:Person = Person(name: "Omer", age: 28)
var p2:Person = Person()
p = Person()

