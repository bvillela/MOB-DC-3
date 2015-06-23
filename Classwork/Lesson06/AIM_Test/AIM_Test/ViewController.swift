//
//  ViewController.swift
//  AIM_Test
//
//  Created by Bruno Villela on 6/22/15.
//  Copyright (c) 2015 Bruno Villela. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var sexField: UITextField!
    @IBOutlet weak var locationField: UITextField!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextField()
        setupButtons ()
       
        
    }
    
    
    
    func setupTextField () {
    
        nameField.placeholder = "Name"
        ageField.placeholder = "Age"
        sexField.placeholder = "Sex"
        locationField.placeholder = "Location"
        
     
        formatTextField(nameField)
        formatTextField(ageField)
        formatTextField(sexField)
        formatTextField(locationField)
    
    }
    
    func formatTextField(textField: UITextField) {
    
        textField.keyboardType = (textField == ageField) ? .NumberPad : .ASCIICapable
        textField.textColor = (textField == sexField) ? UIColor.redColor() : UIColor.blueColor()
    
    }
    
    func setupButtons() {
        clearButton.setTitle("Clear", forState: UIControlState.allZeros)
        submitButton.setTitle("Submit", forState: UIControlState.Normal)
    
    
    
    }
    
    @IBAction func submitAction(sender: UIButton) {
        
           }
    
   
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showProfile" {
            let destinatioVC = segue.destinationViewController as! ProfileViewController
            destinatioVC.age = ageField.text
            destinatioVC.name = nameField.text
            destinatioVC.sex = sexField.text
            destinatioVC.location = locationField.text
            
    
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

