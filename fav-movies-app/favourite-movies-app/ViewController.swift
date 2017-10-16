//
//  ViewController.swift
//  favourite-movies-app
//
//  Created by localadmin on 10/16/17.
//  Copyright © 2017 localadmin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var favoriteMovies: [Movie] = []
    
    @IBOutlet var mainTableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        mainTableView.reloadData()
        if favoriteMovies.count == 0 {
            favoriteMovies.append(Movie (
                id: "tt0372784",
                title: "Batman Begins",
                year: "2005",
                imageUrl: "https://images-na.ssl-images-amazon.com/images/M/MV5BNTM3OTc0MzM2OV5BMl5BanBnXkFtZTYwNzUwMTI3._V1_.jpg",
                plot: "Caper"))
        }
        super.viewWillAppear(animated)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

