//
//  main.swift
//  Enums
//
//  Created by HackerU on 26/11/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import Foundation

enum Gender{
    case Male
    case Female
    case Other
}

var myGender:Gender = Gender.Male

switch myGender{
case .Male:
    print("male")
case Gender.Female:
    print("female")
default:
    print("unknown")
}