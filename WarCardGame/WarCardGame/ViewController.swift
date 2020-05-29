//
//  ViewController.swift
//  WarCardGame
//
//  Created by Nikhil Mankani on 26/05/20.
//  Copyright © 2020 Nikhil Mankani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    
    //The operations in this function will be performed well the button is clicked
    
    @IBAction func dealTapped(_ sender: Any) {
        
        //Rnadomize 2 numbers
        
        let leftNumber = Int.random(in: 2...14)
        
        
        let rightNumber = Int.random(in: 2...14)
        
        //Update random images
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        
        //Alert the Final Winner and back to 0 scores
        
        //user is the winner
        
        if (leftScore+1 == 15){
            let alert = UIAlertController(title: "Winner", message: "You are the winner", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            
            self.present(alert,animated: true, completion: nil)
            
            leftScore = 0
            rightScore = 0
            leftScoreLabel.text = String(0)
            rightScoreLabel.text = String(0)
            
        }
        
        //CPU is the winner
        
        else if (rightScore+1 == 15){
            let alert = UIAlertController(title: "Winner", message: "CPU is the winner", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .destructive))
            
            self.present(alert,animated: true, completion: nil)
            
            leftScore = 0
            rightScore = 0
            leftScoreLabel.text = String(0)
            rightScoreLabel.text = String(0)
            
        }
        
        // Per move Winning Logic
        
        else if leftNumber > rightNumber {
            //left side wins
            leftScore+=1
            
            leftScoreLabel.text = String(leftScore)
            
        }
        
        else if leftNumber < rightNumber {
            //right side wins
            rightScore+=1
            
            rightScoreLabel.text = String(rightScore)
            
        }
        
        else{
            //Tie
            
            leftScore+=0
            rightScore+=0
            leftScoreLabel.text = String(leftScore)
            rightScoreLabel.text = String(rightScore)
            
        }
        
        
        
    }
    
    
    
    

}

