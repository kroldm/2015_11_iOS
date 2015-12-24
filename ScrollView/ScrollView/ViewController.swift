//
//  ViewController.swift
//  ScrollView
//
//  Created by HackerU on 24/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    var imageView:UIImageView!
    var scrollView:UIScrollView!
    let image = UIImage(named: "pic1")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView = UIImageView(image: image)
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.addSubview(imageView)
        scrollView.contentSize = imageView.bounds.size
        scrollView.delegate = self
        view.addSubview(scrollView)
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        scrollView.alpha = 0.5
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        scrollView.alpha = 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

