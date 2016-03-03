//
//  ViewController.swift
//  Folders
//
//  Created by HackerU on 03/03/2016.
//  Copyright © 2016 Ofer Raviv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let fileManager = NSFileManager()
        let urls = fileManager.URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
        print("documents folder: \(urls[0])")
        
        let tempDir = NSTemporaryDirectory() + "MyFile.txt"
        print("temp folder: \(tempDir)")
        
        let someText = NSString(string: "aaaaaa")
        do{
            try someText.writeToFile(tempDir, atomically: true, encoding: NSUTF8StringEncoding)
        }catch{
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

