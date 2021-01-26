//
//  GameOverViewController.swift
//  MovieQuiz
//
//  Created by Clara Nascimento on 20/01/21.
//  Copyright © 2021 Clara Nascimento. All rights reserved.
//

import UIKit

class GameOverViewController: UIViewController {

    @IBOutlet weak var lbScore: UILabel!
    
    var score: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbScore.text = "\(score)"
    }
    
    @IBAction func playAgain(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
