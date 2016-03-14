//
//  Person.swift
//  Core data
//
//  Created by HackerU on 14/03/2016.
//  Copyright © 2016 Ofer Raviv. All rights reserved.
//

import Foundation
import CoreData

@objc(Person) class Person: NSManagedObject {
    @NSManaged var age: Int
    @NSManaged var firstName: String
    @NSManaged var lastName: String
}
