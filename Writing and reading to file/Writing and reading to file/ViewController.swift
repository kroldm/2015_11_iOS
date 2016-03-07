//
//  ViewController.swift
//  Writing and reading to file
//
//  Created by HackerU on 07/03/2016.
//  Copyright © 2016 Ofer Raviv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let destPath = NSTemporaryDirectory() + "myfile.txt"
        
        let someText = NSString(string: "dima")
        do{
            try someText.writeToFile(destPath, atomically: true, encoding: NSUTF8StringEncoding)
        }catch{
            
        }
        
        do{
            let readStr = try NSString(contentsOfFile: destPath, encoding: NSUTF8StringEncoding)
            print(readStr)
        }catch{
            
        }
        
        let arrNames:NSArray = ["dima","kolya","petya"]
        do{
            try arrNames.writeToFile(destPath, atomically: true)
        }catch{
            
        }
        
        let readArr = NSArray(contentsOfFile: destPath)
        print(readArr)
        
        //create folder
        let tmpPath = NSTemporaryDirectory() as NSString
        let imgPath = tmpPath.stringByAppendingPathComponent("images")
        do{
            try NSFileManager().createDirectoryAtPath(imgPath, withIntermediateDirectories: true, attributes: nil)
        }catch{
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

