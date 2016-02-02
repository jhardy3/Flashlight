//
//  ViewController.swift
//  FlashLight2.0
//
//  Created by Jake Hardy on 2/1/16.
//  Copyright © 2016 Jake Hardy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var buttonState: Bool = false
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blackColor()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonSwitch(sender: UIButton) {
        if buttonState == false {
            self.view.backgroundColor = UIColor.whiteColor()
            button.setTitle("OFF", forState: UIControlState.Normal)
            button.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
            buttonState = true
        } else {
            self.view.backgroundColor = UIColor.blackColor()
            button.setTitle("ON", forState: UIControlState.Normal)
            button.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
            buttonState = false
        }
    }
    
}

