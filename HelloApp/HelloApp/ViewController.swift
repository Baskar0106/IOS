//
//  ViewController.swift
//  HelloApp
//
//  Created by Bobbala,Bhaskar Venkata Prudhvi on 1/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textOutlet: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var displayLabel: UILabel!
    @IBAction func ButtonClicked(_ sender: UIButton) {
    
 
    let enteredName = textOutlet.text!
    displayLabel.text = "Hello,\(enteredName)!"
        
    }
}

