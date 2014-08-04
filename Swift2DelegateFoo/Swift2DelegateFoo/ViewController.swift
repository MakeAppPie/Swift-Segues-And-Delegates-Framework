//
//  ViewController.swift
//  Swift2DelegateFoo
//
//  Created by Steven Lipton on 6/29/14.
//  Copyright (c) 2014 Steven Lipton. All rights reserved.
//

import UIKit

class ViewController: UIViewController,FooTwoViewControllerDelegate {
    @IBOutlet var colorLabel : UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func myVCDidFinish(controller: FooTwoViewController, text: String) {
        colorLabel.text = "The Color is " +  text
        controller.navigationController.popViewControllerAnimated(true)
    }
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if segue.identifier == "mySegue"{
            let vc = segue.destinationViewController as FooTwoViewController
            vc.colorString = colorLabel.text
            vc.delegate = self
        }
    }
}

