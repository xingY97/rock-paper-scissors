//
//  ResultsViewController.swift
//  RockPaperScissors
//
//  Created by Adriana González Martínez on 11/25/19.
//  Copyright © 2019 Adriana González Martínez. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var userSelection : GameOption!
    
    //TODO: Set up an outlet for the label
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var labelResult: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let randomOption = GameOption.init()
        
        switch randomOption {
        case .rock:
            resultImage.image = UIImage(named: "rock")
        case .paper:
            resultImage.image = UIImage(named: "paper")
        case .scissors:
            resultImage.image = UIImage(named: "scissors")
        }
        
        
        //TODO: Depending on the result, show the legend "You won", "You lost", "It's a tie" in the label
        if userSelection == randomOption {
            labelResult.text = "tie"
        }else if userSelection.weakness == randomOption {
            labelResult.text = "you lose"
        }else  {
            labelResult.text = "you win"
        }
    }
}

//enum GameOption: Int, CaseIterable{
//    case rock = 0
//    case paper = 1
//    case scissors = 2
//
//    var weakness: GameOption {
//        switch self {
//        case .rock:
//            return .paper
//        case .paper:
//            return .scissors
//        case .scissors:
//            return .rock
//        }
//    }

