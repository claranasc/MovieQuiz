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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func playAgain(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
}
