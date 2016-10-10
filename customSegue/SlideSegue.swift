//
//  SlideSegue.swift
//  customSegue
//
//  Created by Diana on 10/10/16.
//  Copyright © 2016 diana. All rights reserved.
//

import UIKit

class SlideUpSegue: UIStoryboardSegue {
    override func perform() {
        let sourceView = sourceViewController.view
        let destinationView = destinationViewController.view
        let screen = UIScreen.mainScreen().bounds
        
        (UIApplication.sharedApplication().keyWindow)?.insertSubview(destinationView, aboveSubview: sourceView)
        destinationView.frame = CGRectOffset(destinationView.frame, 0, screen.height)
        
        UIView.animateWithDuration(0.3, animations: {
            sourceView.frame = CGRectOffset(sourceView.frame, 0, -screen.height)
            destinationView.frame = CGRectOffset(destinationView.frame, 0, -screen.height)
            }) { (Bool) in
                self.sourceViewController.presentViewController(self.destinationViewController, animated: false, completion: nil)
        }
        
    }
}

class SlideDownSegue: UIStoryboardSegue {
    override func perform() {
        let sourceView = sourceViewController.view
        let destinationView = destinationViewController.view
        let screen = UIScreen.mainScreen().bounds
        
        (UIApplication.sharedApplication().keyWindow)?.insertSubview(destinationView, aboveSubview: sourceView)

        
        UIView.animateWithDuration(0.3, animations: {
            sourceView.frame = CGRectOffset(sourceView.frame, 0, screen.height)
            destinationView.frame = CGRectOffset(destinationView.frame, 0, screen.height)
            
        }) { (Bool) in
            self.sourceViewController.dismissViewControllerAnimated(false, completion: nil)
        }
        
    }
    
}
