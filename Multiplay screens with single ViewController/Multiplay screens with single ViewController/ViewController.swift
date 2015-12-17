//
//  ViewController.swift
//  Multiplay screens with single ViewController
//
//  Created by HackerU on 17/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var screen1:UIView!
    var screen2:UIView!
    var screen3:UIView!
    var currScreen:UIView!
    var button1:UIButton!
    var button2:UIButton!
    var button3:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenRect = CGRect(x: 0, y: 60, width: view.frame.width, height: view.frame.height - 60)
        screen1 = UIView(frame: screenRect)
        screen2 = UIView(frame: screenRect)
        screen3 = UIView(frame: screenRect)
        screen2.hidden = true
        screen3.hidden = true
        currScreen = screen1
        view.addSubview(screen1)
        view.addSubview(screen2)
        view.addSubview(screen3)
        
        let label1 = UILabel(frame: CGRect(x: 0, y: 0, width: 150, height: 30))
        label1.center = screen1.center
        label1.text = "screen 1"
        screen1.addSubview(label1)
        let label2 = UILabel(frame: CGRect(x: 0, y: 0, width: 150, height: 30))
        label2.center = screen2.center
        label2.text = "screen 2"
        screen2.addSubview(label2)
        let label3 = UILabel(frame: CGRect(x: 0, y: 0, width: 150, height: 30))
        label3.center = screen3.center
        label3.text = "screen 3"
        screen3.addSubview(label3)
        
        let buttonWidth = 100
        let buttonPadding = 10
        let buttonTop = 20
        var buttonRect = CGRect(x: (Int(view.frame.width) - (buttonWidth * 3 + buttonPadding * 2)) / 2, y: buttonTop, width: buttonWidth, height: 30)
        button1 = UIButton(type: .System)
        button1.frame = buttonRect
        button1.setTitle("screen1", forState: .Normal)
        button1.addTarget(self, action: "btnChangeScreen:", forControlEvents: .TouchUpInside)
        button1.tag = 1
        buttonRect.origin.x += CGFloat(buttonWidth + buttonPadding)
        button2 = UIButton(type: .System)
        button2.frame = buttonRect
        button2.setTitle("screen2", forState: .Normal)
        button2.addTarget(self, action: "btnChangeScreen:", forControlEvents: .TouchUpInside)
        button2.tag = 2
        buttonRect.origin.x += CGFloat(buttonWidth + buttonPadding)
        button3 = UIButton(type: .System)
        button3.frame = buttonRect
        button3.setTitle("screen3", forState: .Normal)
        button3.addTarget(self, action: "btnChangeScreen:", forControlEvents: .TouchUpInside)
        button3.tag = 3
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
    }
    
    func btnChangeScreen(sender:UIButton){
        currScreen.hidden = true
        switch sender.tag{
        case 1:
            screen1.hidden = false
            currScreen = screen1
            break
        case 2:
            screen2.hidden = false
            currScreen = screen2
            break
        case 3:
            screen3.hidden = false
            currScreen = screen3
            break
        default:
            break
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

