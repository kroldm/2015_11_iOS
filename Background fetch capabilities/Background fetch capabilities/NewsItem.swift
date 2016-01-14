//
//  NewsItem.swift
//  Background fetch capabilities
//
//  Created by HackerU on 14/01/2016.
//  Copyright © 2016 HackerU. All rights reserved.
//

import Foundation

struct NewsItem {
    var text:String
    var date:NSDate
    
    init(text:String, date:NSDate){
        self.text = text
        self.date = date
    }
}