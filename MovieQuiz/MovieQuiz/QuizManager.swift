//
//  QuizManager.swift
//  MovieQuiz
//
//  Created by Clara Nascimento on 21/01/21.
//  Copyright © 2021 Clara Nascimento. All rights reserved.
//

import Foundation

class QuizManager {
    
    let quizes: [Quiz]
    let quizOptions: [QuizOption]
    var score: Int
    
    init() {
        score = 0
        let quizesURL = Bundle.main.url(forResource: "quizes", withExtension: "json")!
        do {
            let quizesData = try Data(contentsOf: quizesURL)
            quizes = try JSONDecoder().decode([Quiz].self, from: quizesData)
            let quizOptionsURL = Bundle.main.url(forResource: "options", withExtension: "json")!
            let quizOptionsData = try! Data(contentsOf: quizOptionsURL)
            quizOptions = try! JSONDecoder().decode([QuizOption].self, from: quizOptionsData)
        } catch {
            print(error.localizedDescription)
            quizes = []
            quizOptions = []
        }
    }
}

struct Quiz: Codable {
    let name: String
    let number: Int
}

struct QuizOption: Codable {
    let name: String
}
