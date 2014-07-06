//
//  FooTwoViewController.swift
//  Swift2DelegateFoo
//
//  Created by Steven Lipton on 6/29/14.
//  Copyright (c) 2014 Steven Lipton. All rights reserved.
//

import UIKit

protocol FooTwoViewControllerDelegate{
    func myVCDidFinish(controller:FooTwoViewController,text:String)
}

class FooTwoViewController: UIViewController {
    var delegate:FooTwoViewControllerDelegate? = nil
    var colorString:String = ""
    @IBOutlet var colorLabel : UILabel

    @IBAction func saveColor(sender : UIBarButtonItem) {
        if delegate{
            delegate!.myVCDidFinish(self, text: colorLabel.text)
        }
    }
/* 
    //removed 7/6/2014 see comment by rob in the blog
    // concerning clarity of the method's name.
    //if already using this version of the method, it will work fine.
    @IBAction func colorButton(sender : UIButton) {
        colorLabel.text = sender.titleLabel.text
    }
    
*/
    @IBAction func colorSelectionButton(sender: UIButton) {
         colorLabel.text = sender.titleLabel.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorLabel.text = colorString
    }
}
