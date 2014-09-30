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
    
/* FIRST CHALLENGE 09-28-14: Added nameLabel (see IBOutlet below) to match messageLabel format.
    Control clicked label from main.storyboard and dragged here.*/
    @IBOutlet weak var nameLabel: UILabel!
    
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
//IBAction Solution #1:
    @IBAction func sendMailButtonPressed(sender: UIButton) {
    //code will evaluate when we press the button
    //Adding a comment here to test commits on 9-27-2014
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        //Group the code so it's easy to assess
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        enterNameTextField.text = ""
        //Do I need "resign first responder" since it's above? - Yes for each field
        enterNameTextField.resignFirstResponder()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
/*FIRST CHALLENGE 09-29-2014 (See all below):
IBAction Challenge #1 How I originally arranged the code:
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        /*FIRST CHALLENGE 09-29-2014 (See all below): This is the function for the nameLabel added:
        Cannot get it to show "Created By:" next to my name (something nice to have) when I click "Send Mail". Do I need to create another label? Maybe a text box? */
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        enterNameTextField.text = ""
        //Do I need "resign first responder" since it's above?
        enterNameTextField.resignFirstResponder()
        nameLabel.textColor = UIColor.blueColor()*/
        
    }
    
}

