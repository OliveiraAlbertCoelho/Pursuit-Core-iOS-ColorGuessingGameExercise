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
        super.viewDidLoad()
        gameColor.backgroundColor = game.giveRandomUIColor()
    }
   var game = RGBColors()
    var counter = 0
    var highScore = 0
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var gameColor: UIView!
    @IBOutlet weak var highScoreLabel: UILabel!
    
    @IBAction func redButton(_ sender: UIButton) {
        let red = "red"
        if red == game.getBiggest(){
           updateScore()
            changeColor()
        } else {
            getHighScore()
                resetScore()
        }
    }
    
    @IBAction func greenButton(_ sender: UIButton) {
        let green = "green"
        if green == game.getBiggest(){
            updateScore()
            changeColor()

        }else {
            getHighScore()
            resetScore()
        }
       
    }
    
    
    
    @IBAction func blueButton(_ sender: UIButton) {
        let blue = "blue"
        if blue == game.getBiggest(){
            updateScore()
            changeColor()
            

        }else {
            getHighScore()
            resetScore()
        }
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

