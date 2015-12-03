//
//  main.swift
//  Class
//
//  Created by HackerU on 03/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import Foundation

class Person {
    
    init(){
        _name = "name"
    }
    
    private var _name:String
    var age:Int = 0 {
        willSet{
            print("age value will be changed from \(self.age) to \(newValue)")
        }
        didSet{
            print("age value is changed to \(self.age)")
        }
    }
    
    private var roles = ["Manager", "Programmer", "QA"]
    
    subscript(index: Int)->String{
        get{
            return roles[index]
        }
        set{
            roles[index] = newValue
        }
    }
    
    lazy var lastName:String = "lastName"
    
    class var species:String{
        return "Homo sapiens"
    }
    
    static var numberOfPersons:Int = 0
    
    var name:String{
        get{
            return _name
        }
        set{
            _name = newValue
        }
    }
    
    func description()->String{
        return "I am \(self._name) and I am \(self.age) years old"
    }
}

var p:Person = Person()
p.name = "dima"
p.age = 23
print(p.description())
var p2:Person = p
var b:Bool = p === p2
print(b)

Person.species

var d:Dog = Dog()
//d.owner = p
print(d.owner)

print(p[1])

class Employee: Person {
    var number = 123
    var rate = 10.00
    
    override func description() -> String {
        return super.description() + ", number is \(number) rate is \(rate)"
    }
}

var e = Employee()

var p4:Person = Employee()
print(p4.description())
if p4 is Employee{
    var e4:Employee = p4 as! Employee
    e4.number = 234
}





