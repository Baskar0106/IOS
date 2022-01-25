//
//  ViewController.swift
//  VowelTester
//
//  Created by Bobbala,Bhaskar Venkata Prudhvi on 1/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textOutlet: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        //read the text
        var enteredtext = textOutlet.text!
        //check for vowel
        if (enteredtext.contains("a") ||
            enteredtext.contains("e") ||
            enteredtext.contains("i") ||
            enteredtext.contains("o") ||
            enteredtext.contains("u")){
            //display on the label
            displayLabel.text = "The entered text contains Vowel"
        }
        else{
            displayLabel.text = "The entered text does not have vowel"
        }
    }
    
}

