//
//  ResultViewController.swift
//  DiscountAppMultiController
//
//  Created by Bobbala,Bhaskar Venkata Prudhvi on 3/22/22.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var enteredAmountOutlet: UILabel!
    @IBOutlet weak var enteredDiscountOutlet: UILabel!
    @IBOutlet weak var priceAfterDiscountOutlet: UILabel!
    
    var amount = ""
    var discRate = ""
    var priceAfterDisc = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        enteredAmountOutlet.text! = enteredAmountOutlet.text! + amount;
        enteredDiscountOutlet.text! = enteredDiscountOutlet.text! + discRate;
        priceAfterDiscountOutlet.text! = priceAfterDiscountOutlet.text! + priceAfterDisc;
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
