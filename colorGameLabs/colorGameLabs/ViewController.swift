//
//  ViewController.swift
//  colorGameLabs
//
//  Created by albert coelho oliveira on 7/30/19.
//  Copyright © 2019 albert coelho oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        playGameOut.isHidden = true
        
        super.viewDidLoad()
        gameColor.backgroundColor = game.giveRandomUIColor()
        playGameOut.layer.borderColor = UIColor.black.cgColor;
        playGameOut.layer.borderWidth = 10.0;
    }
    var game = RGBColors()
    var counter = 0
    var highScore = 0
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var gameColor: UIView!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var redOut: UIButton!
    @IBOutlet weak var blueOut: UIButton!
    @IBOutlet weak var greenOut: UIButton!
    @IBOutlet weak var playGameOut: UIButton!
    
    
    @IBAction func playAgainMsg(_ sender: UIButton) {
        changeColor()
        disableStuff()
        playGameOut.isHidden = true
        blueOut.isEnabled = true
        redOut.isEnabled = true
        greenOut.isEnabled = true
   
    }
   
    @IBAction func redButton(_ sender: UIButton) {
        if "red" == game.getBiggest(){
            updateScore()
            changeColor()
        } else {
            disableStuff()
            getHighScore()
            resetScore()
            playGameOut.isHidden = false
         
        }
    }
    
    @IBAction func greenButton(_ sender: UIButton) {
        if "green" == game.getBiggest(){
            updateScore()
            changeColor()
            
        }else {
            disableStuff()
            getHighScore()
            resetScore()
            playGameOut.isHidden = false
        }
        
    }
    
    
    
    @IBAction func blueButton(_ sender: UIButton) {
        if "blue" == game.getBiggest(){
            updateScore()
            changeColor()
            
            
        }else {
            disableStuff()
            getHighScore()
            resetScore()
            playGameOut.isHidden = false
        }
    }
    func disableStuff(){
        redOut.isEnabled = false
        blueOut.isEnabled = false
        greenOut.isEnabled = false
    }
    func updateScore() {
        
        counter += 1
        score.text = "Score: \(counter.description)"
    }
    func resetScore(){
        counter = 0
        score.text = "Score: \(counter.description)"
    }
    func getHighScore(){
        if counter > highScore {
            highScore = counter
            highScoreLabel.text = "High Score: \(highScore.description)"
        }
        
    }
    func changeColor(){
        self.game = RGBColors()
        gameColor.backgroundColor = game.giveRandomUIColor()
    }
}

