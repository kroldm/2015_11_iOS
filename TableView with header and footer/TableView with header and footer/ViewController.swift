//
//  ViewController.swift
//  TableView with header and footer
//
//  Created by HackerU on 07/01/2016.
//  Copyright © 2016 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tableView:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView = UITableView(frame: view.bounds, style: .Grouped)
        tableView!.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "identifier")
        tableView!.dataSource = self
        tableView!.delegate = self
        view.addSubview(tableView!)
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section{
        case 0:
            return 3
        case 1:
            return 5
        case 2:
            return 8
        default:
            return 0
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("identifier", forIndexPath: indexPath)
        cell.textLabel?.text = "section \(indexPath.section), row \(indexPath.row)"
        return cell
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return newLabelWithTitle("Section \(section) Header")
    }
    func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return newLabelWithTitle("Section \(section) Footer")
    }
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    func newLabelWithTitle(title:String)->UILabel{
        let label = UILabel()
        label.text = title
        label.backgroundColor = UIColor.clearColor()
        label.sizeToFit()
        return label
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

