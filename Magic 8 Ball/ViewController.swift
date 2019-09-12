//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Kevin Lagat on 12/09/2019.
//  Copyright © 2019 Kevin Lagat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let imageArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber = 0
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateMagicBall()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func askButtonPressed(_ sender: Any) {
        updateMagicBall()
    }
    
    func updateMagicBall() {
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: imageArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateMagicBall()
    }

}

