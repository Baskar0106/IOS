//
//  ViewController.swift
//  Animations
//
//  Created by Bobbala,Bhaskar Venkata Prudhvi on 3/17/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var happyOutlet: UIButton!
    
    @IBOutlet weak var sadOutlet: UIButton!
    
    @IBOutlet weak var angryOutlet: UIButton!
    
    @IBOutlet weak var shakemeOutlet: UIButton!
    
    @IBOutlet weak var showOutlet: UIButton!
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // move all the components to outside of view
        
    }
    override func viewDidAppear(_ animated: Bool) {
        imageOutlet.frame.origin.x = view.frame.maxX;
        happyOutlet.frame.origin.x = view.frame.maxX;
        sadOutlet.frame.origin.x = view.frame.maxX;
        angryOutlet.frame.origin.x = view.frame.maxX;
        shakemeOutlet.frame.origin.x = view.frame.maxX;
        
    }
    @IBAction func happyButtonClicked(_ sender: Any) {
        animateImage("Happy")
    
    }
    
    @IBAction func sadButtonClicked(_ sender: Any) {
        animateImage("Sad")
    }
    
    @IBAction func angryButtonClicked(_ sender: Any) {
        animateImage("Angry")
    }
    
    @IBAction func shakeMeButtonClicked(_ sender: Any) {
        //Rectangle r = new Rectangle (x,y,w,h)
        var w = imageOutlet.frame.width
        w += 40
        var h = imageOutlet.frame.height
        h += 40
        
        var x = imageOutlet.frame.origin.x - 20
        var y = imageOutlet.frame.origin.y - 20
        
        var largerFrame = CGRect(x: x, y: y, width: w, height: h)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, animations: {
                            self.imageOutlet.frame = largerFrame
                        })
    }
    
    @IBAction func showButtonClicked(_ sender: Any) {
        UIView.animate(withDuration: 1, animations: {
            self.imageOutlet.center.x = self.view.center.x;
            self.happyOutlet.center.x = self.view.center.x;
            self.sadOutlet.center.x = self.view.center.x;
            self.angryOutlet.center.x = self.view.center.x;
            self.shakemeOutlet.center.x = self.view.center.x;
            self.showOutlet.isEnabled = false;
            
        })
        
    }
    func animateImage(_ imageName: String){
            
            //Making the current image opaque. aplha is 0.
            
            UIView.animate(withDuration: 1, animations:{
                self.imageOutlet.alpha = 0;
        
            } )
            
            
            //Assigning the current image with animation. with alpha is 1
            
            UIView.animate(withDuration: 1,delay: 0.2, animations:{
                
                self.imageOutlet.alpha = 1;
            self.imageOutlet.image = UIImage(named: imageName)
        
            } )
            
        }
    

}

