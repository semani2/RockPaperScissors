//
//  ResultController.swift
//  Roshambo
//
//  Created by Sai Emani on 11/16/18.
//  Copyright © 2018 Sai Emani. All rights reserved.
//

import Foundation
import UIKit

class ResultController: UIViewController {
    
    var selected: Int!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        decideResult()
    }
    
    func randomPlayValue() -> Int {
        let randomValue = 1 + arc4random() % 3
        return Int(randomValue)
    }
    
    func decideResult() {
        if let selected = self.selected {
            switch selected {
            case 1:
                let opponent = randomPlayValue()
                if (opponent == 1) {
                    imageView.image = UIImage(named: "itsATie")
                    label.text = "It's a tie"
                } else if opponent == 2 {
                    imageView.image = UIImage(named: "PaperCoversRock")
                    label.text = "Paper Covers Rock, You Lose!"
                } else {
                    imageView.image = UIImage(named: "RockCrushesScissors")
                    label.text = "Rock crushes scissors, You Win!"
                }
                break
            case 2:
                let opponent = randomPlayValue()
                if (opponent == 1) {
                    imageView.image = UIImage(named: "PaperCoversRock")
                    label.text = "Paper Covers Rock, You Win!"
                } else if opponent == 2 {
                    imageView.image = UIImage(named: "itsATie")
                    label.text = "It's a tie"
                } else {
                    imageView.image = UIImage(named: "ScissorsCutPaper")
                    label.text = "Scissors Cut Paper, You Lose!"
                }
                break
            case 3:
                let opponent = randomPlayValue()
                if (opponent == 1) {
                    imageView.image = UIImage(named: "RockCrushesScissors")
                    label.text = "Rock crushes scissors, You Lose!"
                } else if opponent == 2 {
                    imageView.image = UIImage(named: "ScissorsCutPaper")
                    label.text = "Scissors Cut Paper, You Win!"
                } else {
                    imageView.image = UIImage(named: "itsATie")
                    label.text = "It's a tie"
                }
                break
            default:
                print("Error value selected by player")
                playAgain()
            }
        } else {
            print("Player did not select anything")
            playAgain()
        }
    }
    
    @IBAction func playAgain() {
        dismiss(animated: true
            , completion: nil)
    }
    
    
}
