//
//  ViewController.swift
//  Postcard
//
//  Created by Rodney Zietlow on 9/14/14.
//  Copyright (c) 2014 Rodney Zietlow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
    //code will evaluate when we press the button
    //Adding a comment here to test commits on 9-27-2014
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    
}

