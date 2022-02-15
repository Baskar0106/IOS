//
//  ViewController.swift
//  DiscountApp
//
//  Created by Bobbala,Bhaskar Venkata Prudhvi on 2/15/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var amountEntered: UITextField!
    @IBOutlet weak var discountEntered: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonSubmitted(_ sender: UIButton) {
        var amount = Double(amountEntered.text!)
        var discount = Double(discountEntered.text!)
        var amountAfterDiscount = amount! * (1-discount! / 100)
        label.text = "Price after discount is: \(amountAfterDiscount)"
        
        
        
        
        
        
    }
    
}

