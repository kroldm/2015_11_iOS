//
//  Dog.swift
//  Class
//
//  Created by HackerU on 03/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import Foundation

class Dog {
    private var _name:String = "name"
    private var _owner:Person?
    
    var owner:Person?{
        get{
            return _owner
        }
        set{
            if owner!.age >= 18{
                _owner = newValue
            }
        }
    }
    
    func changeOwnerAge(age:Int){
        if age >= 18{
            _owner!.age = age
        }
    }
}