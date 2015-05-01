//
//  ViewController.swift
//  Postcard2
//
//  Created by Mark Benn on 3/18/15.
//  Copyright (c) 2015 Mark Benn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messagelabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {messagelabel.hidden = false
    messagelabel.text = enterMessageTextField.text
    messagelabel.textColor = UIColor.redColor()
        
    nameLabel.hidden = false
    nameLabel.text = enterNameTextField.text
    nameLabel.textColor = UIColor.blueColor()
    enterNameTextField.text = ""
    enterNameTextField.resignFirstResponder()
        
    enterMessageTextField.text = ""
    enterMessageTextField.resignFirstResponder()
    mailbutton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

