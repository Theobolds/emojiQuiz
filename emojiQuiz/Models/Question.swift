//
//  Quiz.swift
//  emojiQuiz
//
//  Created by alex theobold on 25/03/2020.
//  Copyright © 2020 alex theobold. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: [String]
    let correctAnswer: String
    
    init(q: String, a: [String], correct: String) {
        text = q
        answer = a
        correctAnswer = correct
    }
}
