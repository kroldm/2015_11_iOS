//
//  ViewController.swift
//  TableView
//
//  Created by HackerU on 31/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    var tableView:UITableView?
    let cellIdentifier = "identifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView = UITableView(frame: view.bounds, style: .Plain)
        if let theTableView = tableView{
            theTableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: cellIdentifier)
            theTableView.dataSource = self
            //theTableView.autoresizingMask = .FlexibleHeight
            view.addSubview(theTableView)
        }
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
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)
        cell.textLabel?.text = "section \(indexPath.section), row \(indexPath.row)"
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

