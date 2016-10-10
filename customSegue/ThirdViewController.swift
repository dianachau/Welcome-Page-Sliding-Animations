//
//  ThirdViewController.swift
//  customSegue
//
//  Created by Diana on 10/9/16.
//  Copyright © 2016 diana. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBAction func swipeDownGesture(sender: UISwipeGestureRecognizer) {
        performSegueWithIdentifier("unwindToSecond", sender: self)
    }

}
