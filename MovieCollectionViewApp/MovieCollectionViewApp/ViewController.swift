//
//  ViewController.swift
//  MovieCollectionViewApp
//
//  Created by Bobbala,Bhaskar Venkata Prudhvi on 4/12/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCollectionViewCell
        cell.assignMovies(with: movies[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        titleOutlet.text = "Movie Title: \(movies[indexPath.row].title)"
        yearOutlet.text = "Year Released: \(movies[indexPath.row].releasedYear)"
        ratingOutlet.text = "Rating: \(movies[indexPath.row].movieRating)"
        revenueOutlet.text = "Revenue: \(movies[indexPath.row].boxOffice)"
    }
    
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    @IBOutlet weak var yearOutlet: UILabel!
    
    @IBOutlet weak var titleOutlet: UILabel!
    @IBOutlet weak var ratingOutlet: UILabel!
    @IBOutlet weak var revenueOutlet: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
        
    }

}



