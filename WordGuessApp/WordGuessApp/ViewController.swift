//
//  ViewController.swift
//  WordGuessApp
//
//  Created by Bobbala,Bhaskar Venkata Prudhvi on 2/22/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var hintLabel: UILabel!
    @IBOutlet weak var textEntered: UITextField!
    @IBOutlet weak var checkButton: UIButton!
    @IBOutlet weak var statusDisplay: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    
    var words = [["SWIFT", "Programming Language"],
        ["DOG", "Animal"],
    ["CYCLE", "Two Wheeler"],
    ["MACBOOK", "Apple Device"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func CheckButtonClicked(_ sender: UIButton) {
    }
    @IBAction func PlayAgainButtonClicked(_ sender: UIButton) {
    }
    @IBAction func enterLabelChanged(_ sender: UITextField) {
    }
    

}

