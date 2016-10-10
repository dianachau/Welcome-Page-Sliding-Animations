//
//  SecondViewController.swift
//  customSegue
//
//  Created by Diana on 10/9/16.
//  Copyright © 2016 diana. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    // MARK: Interactions
    @IBAction func swipeDownGesture(sender: UISwipeGestureRecognizer) {
        performSegueWithIdentifier("unwindToFirst", sender: self)
    }
    
    @IBAction func swipeUpGesture(sender: UISwipeGestureRecognizer) {
        performSegueWithIdentifier("segueToThird", sender: self)
    }
    
    @IBAction func unwindToSecond(sender: UIStoryboardSegue) {
    }

}
