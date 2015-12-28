//
//  ViewController.swift
//  Adding gravity to views
//
//  Created by HackerU on 28/12/2015.
//  Copyright © 2015 HackerU. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollisionBehaviorDelegate {

    var squareViews:[UIView]!
    var animator:UIDynamicAnimator!
    var pushBehavior:UIPushBehavior!
    
    let bottomBoundary = "bottomBoundary"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        squareViews = [UIView]()
        let colors = [UIColor.redColor(),UIColor.blueColor(),UIColor.greenColor(),UIColor.brownColor()]
        
        let size:CGFloat = 60
        var currentCenterPoint = CGPoint(x: (view.frame.width - size) / 2, y: size)
        let eachViewSize = CGSize(width: size, height: size)
        for i in 0 ..< 4{
            let newView = UIView(frame: CGRect(x: 0, y: 0, width: eachViewSize.width, height: eachViewSize.height))
            newView.backgroundColor = colors[i % colors.count]
            newView.center = currentCenterPoint
            currentCenterPoint.y = eachViewSize.height + 10
            squareViews.append(newView)
            view.addSubview(newView)
        }
        
        animator = UIDynamicAnimator(referenceView: view)
        
        let gravity = UIGravityBehavior(items: squareViews)
        animator.addBehavior(gravity)
        
        let collision = UICollisionBehavior(items: squareViews)
        collision.translatesReferenceBoundsIntoBoundary = true
        let fromPoint = CGPoint(x: 0, y: view.frame.height - 100)
        let toPoint = CGPoint(x: view.frame.width, y: view.frame.height - 140)
        collision.addBoundaryWithIdentifier(bottomBoundary, fromPoint: fromPoint, toPoint: toPoint)
        collision.collisionDelegate = self
        animator.addBehavior(collision)
    }
    
    func collisionBehavior(behavior: UICollisionBehavior, beganContactForItem item: UIDynamicItem, withBoundaryIdentifier identifier: NSCopying?, atPoint p: CGPoint) {
        
        if identifier != nil && (identifier as! String) == bottomBoundary{
            UIView.animateWithDuration(3, animations: { () -> Void in
                let squareView = item as! UIView
                squareView.backgroundColor = UIColor.blackColor()
                squareView.alpha = 0
                }, completion: { (finished:Bool) -> Void in
                    let squareView = item as! UIView
                    behavior.removeItem(squareView)
                    squareView.removeFromSuperview()
            })
        }
    }
    
    func createGestureRecognizer(){
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: "handleTap:")
        view.addGestureRecognizer(tapGestureRecognizer)
    }
    
    func handleTap(tap:UITapGestureRecognizer){
        let tapPoint = tap.locationInView(view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

