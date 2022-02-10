//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Bobbala,Bhaskar Venkata Prudhvi on 2/10/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageViewOutlet: UIImageView!
    @IBOutlet weak var crsNum: UILabel!
    @IBOutlet weak var crsTitle: UILabel!
    @IBOutlet weak var crsSemester: UILabel!
    @IBOutlet weak var PreviousButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    let courses = [["img01", "44555", "Network Security", "Fall 2022"],
                   ["img02", "44643", "IOS", "Spring 2022"],
                   ["img03", "44656", "Streaming Data", "Summer 2022"]]
    
    var imageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Load the details(image, num, title, and sem) of the first(0th element) course
        
        updateUI(imageNumber);
        
        
        //Previous Button is Disabled
        PreviousButton.isEnabled = false;
        
    }
    
    
    @IBAction func previousButtonClicked(_ sender: Any) {
        //next button should be enabled
        nextButton.isEnabled = true
        
        //update the UI
        imageNumber -= 1
        updateUI(imageNumber)
        
        //if the course is at 0th position, previous button should be disabled
        if(imageNumber == 0){
            PreviousButton.isEnabled = false
        }
        
        
    }
    

    @IBAction func nextButtonClicked(_ sender: Any) {
        
        //UI should be updated with the next course details
        imageNumber += 1
        
        //previous button should be enabled
        PreviousButton.isEnabled = true
        
        //Once reaching the end of couses next button should be disabled.
        if(imageNumber == courses.count-1){
            nextButton.isEnabled = false
        }
    
    
    
    

}
    func updateUI(_ imageNumber: Int){
        imageViewOutlet.image = UIImage(named: courses[imageNumber][0])
        crsNum.text = courses[imageNumber][1]
        crsTitle.text = courses[imageNumber][2]
        crsSemester.text = courses[imageNumber][3]
    }
    
}

