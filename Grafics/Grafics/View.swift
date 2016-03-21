//
//  View.swift
//  Grafics
//
//  Created by HackerU on 21/03/2016.
//  Copyright © 2016 Ofer Raviv. All rights reserved.
//

import UIKit

class View: UIView {
    
    override func drawRect(rect: CGRect) {
        let fontName = "HelveticaNeue-Bold"
        let helveticaBold = UIFont(name: fontName, size: 40.0)
        let string = "Some String" as NSString
        string.drawAtPoint(CGPoint(x: 40.0, y: 180.0), withAttributes: [NSFontAttributeName : helveticaBold!])
    }
    
}
