//
//  ViewController.swift
//  Picking values with PickerView
//
//  Created by HackerU on 14/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var picker:UIPickerView!

    override func viewDidLoad() {
        super.viewDidLoad()

        picker = UIPickerView()
        picker.center = view.center
        picker.dataSource = self
        picker.delegate = self
        view.addSubview(picker)
        
        picker.reloadComponent(0)
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "row \(row+1)"
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("row selected \(row)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

