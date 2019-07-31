//
//  ViewController.swift
//  colorGameLabs
//
//  Created by albert coelho oliveira on 7/30/19.
//  Copyright © 2019 albert coelho oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   var game = RGBColors()
    var counter = 0
    @IBOutlet weak var checkBug: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var gameColor: UIView!
    
    @IBAction func redButton(_ sender: UIButton) {
        let red = "red"
        if red == game.getBiggest(){
           updateScore()
            changeColor()
        } else {
            //call wrong function
        }
    }
    
    @IBAction func greenButton(_ sender: UIButton) {
        let green = "green"
        if green == game.getBiggest(){
            updateScore()
            changeColor()

        }
       
    }
    
    
    
    @IBAction func blueButton(_ sender: UIButton) {
        let blue = "blue"
        if blue == game.getBiggest(){
            updateScore()
            changeColor()

        }
    }
    
    @IBOutlet weak var SOMETHING: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //changeColor()
        gameColor.backgroundColor = game.giveRandomUIColor()
    }
    
    func updateScore() {
        counter += 1
        score.text = counter.description
    }
//    func incrementCounter (arr:String){
//         changeColor()
//        checkBug.text = game.getBiggest()
//        let please = game.getBiggest()
//        if arr == please  {
//             SOMETHING.text = "YES"
//          counter += 1
//        }else {
//            SOMETHING.text = "NO"
//        }
//    }
    func changeColor(){
        
        self.game = RGBColors()
        gameColor.backgroundColor = game.giveRandomUIColor()
    }
}

