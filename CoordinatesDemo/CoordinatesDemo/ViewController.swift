//
//  ViewController.swift
//  CoordinatesDemo
//
//  Created by Bobbala,Bhaskar Venkata Prudhvi on 3/1/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let minX = imageViewOutlet.frame.minX;
        let minY = imageViewOutlet.frame.minY;
        print(minX, "," , minY);
        
        let maxX = imageViewOutlet.frame.maxX;
        let maxY = imageViewOutlet.frame.maxY;
        print(maxX, "," ,maxY);
        
        let midX = imageViewOutlet.frame.midX;
        let midY = imageViewOutlet.frame.midY;
        print(midX, "," ,midY);
        
        //moving location of object to upper left corner 0.0
        imageViewOutlet.frame.origin.x = 0
        imageViewOutlet.frame.origin.y = 0
        
        //moving location of object to upper right corner 314.0
        imageViewOutlet.frame.origin.x = 314
        imageViewOutlet.frame.origin.y = 0
        
        //moving location of object to lower left corner 0.796
        imageViewOutlet.frame.origin.x = 0
        imageViewOutlet.frame.origin.y = 796
        
        
        //moving location of object to lower right corner 314.796
        imageViewOutlet.frame.origin.x = 314
        imageViewOutlet.frame.origin.y = 796
        
        //moving location of object to center 157.398
        imageViewOutlet.frame.origin.x = 157
        imageViewOutlet.frame.origin.y = 398
        
        
        
        
        
        
        
        
        
        
    }


}

