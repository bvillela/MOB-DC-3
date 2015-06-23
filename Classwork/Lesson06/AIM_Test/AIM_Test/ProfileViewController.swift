//
//  ProfileViewController.swift
//  AIM_Test
//
//  Created by Bruno Villela on 6/22/15.
//  Copyright (c) 2015 Bruno Villela. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController
{
    
    var name: String?
    var age: String?
    var sex: String?
    var location: String?
   

    @IBOutlet weak var nameField: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
 
 
        if let name = name {
        
        nameField.text = name
        }
        
    }
    
}
