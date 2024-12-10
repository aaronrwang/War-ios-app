//
//  ViewController.swift
//  WarCard
//
//  Created by Aaron Wang on 8/30/20.
//  Copyright © 2020 Aaron Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    @IBOutlet weak var drawLabel: UILabel!
    var leftScore = 0
    var rightScore = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: Any) {
        drawLabel.text = String(" ")
        let leftCardNumber = Int.random(in: 2...14)
        leftImageView.image = UIImage(named: ("card\(leftCardNumber)"))
        print("card\(leftCardNumber)")
        let rightCardNumber = Int.random(in: 2...14)
        rightImageView.image = UIImage(named: ("card\(rightCardNumber)"))
        print("card\(rightCardNumber)")
        if leftCardNumber > rightCardNumber {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        } else if leftCardNumber < rightCardNumber {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        } else{
            drawLabel.text = String("Draw")
        }
    }
    


}

