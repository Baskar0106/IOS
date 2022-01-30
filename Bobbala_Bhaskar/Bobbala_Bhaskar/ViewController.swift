//
//  ViewController.swift
//  Bobbala_Bhaskar
//
//  Created by Bobbala,Bhaskar Venkata Prudhvi on 1/30/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var Details: UILabel!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var initialsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onClickOfSubmit(_ sender: UIButton) {
        var firstName:String = firstNameTextField.text!
        var lastName:String = lastNameTextField.text!
        
        fullNameLabel.text = "Full Name:\(firstName), \(lastName)"
        Details.text = "Details,"
        initialsLabel.text = "Initials: \(firstName[firstName.startIndex])\(lastName[lastName.startIndex])"
    
        
        
        
        
        
    }
    @IBAction func onClickOfReset(_ sender: UIButton)
    {
        fullNameLabel.text = nil
        Details.text = nil
        initialsLabel.text = nil
        firstNameTextField.text = nil
        lastNameTextField.text = nil
        firstNameTextField.becomeFirstResponder()
    }
    

}

