//
//  ViewController.swift
//  Downloading image asynchronously
//
//  Created by HackerU on 11/01/2016.
//  Copyright © 2016 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)
        dispatch_async(queue) { [weak self]() -> Void in
            var image:UIImage?
            
            let urlAsString = "http://www.asmax.xzca/sklxms"
            let url = NSURL(string: urlAsString)
            let urlRequest = NSURLRequest(URL: url!)
            do{
                let imageData = try NSURLConnection.sendSynchronousRequest(urlRequest, returningResponse: nil)
                if imageData.length > 0{
                    image = UIImage(data: imageData)
                    let imageView = UIImageView(frame: self!.view.bounds)
                    imageView.image = image
                    dispatch_async(dispatch_get_main_queue(), { [weak self]() -> Void in
                        self!.view.addSubview(imageView)
                    })
                }
            }catch{
                print("problem")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

