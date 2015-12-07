//
//  main.swift
//  Protocols
//
//  Created by HackerU on 07/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import Foundation

protocol PrintDelegate{
    func printThis()
}

class Person {
    
}

class aClass: Person, PrintDelegate {
    func printThis() {
        print("printing...")
    }
}

protocol ButtonDelegate{
    func didClick(sender:Button)
}

class Button {
    var delegate:ButtonDelegate?
    
    private func buttonClicked(){
        delegate?.didClick(self)
    }
}