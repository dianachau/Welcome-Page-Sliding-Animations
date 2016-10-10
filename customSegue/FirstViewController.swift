//
//  ViewController.swift
//  customSegue
//
//  Created by Diana on 10/9/16.
//  Copyright © 2016 diana. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController {
    
    // MARK: - View Did
    override func viewDidAppear(animated: Bool) {
        UIApplication.sharedApplication().statusBarStyle = .Default
    }
    
    override func viewDidDisappear(animated: Bool) {
        UIApplication.sharedApplication().statusBarStyle = .LightContent
    }

    // MARK: - Interactions
    @IBAction func swipeUpGesture(sender: UISwipeGestureRecognizer) {
        performSegueWithIdentifier("segueToSecond", sender: self)
    }
    
    // MARK: - Unwind Segue
    @IBAction func unwindToFirst(sender: UIStoryboardSegue) {
    }
    
}

