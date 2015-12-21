//
//  ViewController.swift
//  DatePicker
//
//  Created by HackerU on 21/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var datePicker:UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        datePicker = UIDatePicker()
        datePicker.center = view.center
        view.addSubview(datePicker)
        
        let selectedDate = datePicker.date
        print(selectedDate)
        
        datePicker.addTarget(self, action: "datePickerDateChanged:", forControlEvents: .ValueChanged)
        
        let now = NSDate()
        print(now)
        
        let oneYearTime:NSTimeInterval = 365 * 24 * 60 * 60
        let todayDate = NSDate()
        let oneYearFromToday = todayDate.dateByAddingTimeInterval(oneYearTime)
        datePicker.minimumDate = todayDate
        datePicker.maximumDate = oneYearFromToday
    }
    
    func datePickerDateChanged(sender:UIDatePicker){
        print("date changed")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

