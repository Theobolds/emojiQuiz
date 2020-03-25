//
//  QuizBrain.swift
//  emojiQuiz
//
//  Created by alex theobold on 25/03/2020.
//  Copyright © 2020 alex theobold. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "🐝", a: ["Bee", "Cow"], correct: "Bee"),
        Question(q: "🦆", a: ["Pig", "Duck"], correct: "Duck"),
        Question(q: "🦉", a: ["Owl", "Duck"], correct: "Owl"),
        Question(q: "🐠", a: ["Dog","Fish"], correct: "Fish"),
        Question(q: "🐖", a: ["Bee", "Pig"], correct: "Pig"),
        Question(q: "🐓", a: ["Hen", "Crab"], correct: "Hen"),
        Question(q: "🦮", a: ["Dog", "Ant"], correct: "Dog"),
        Question(q: "🐄", a: ["Dog", "Cow"], correct: "Cow"),
        Question(q: "🦀", a: ["Crab", "Owl"], correct: "Crab"),
        Question(q: "🐜", a: ["Ant", "Fish"], correct: "Ant")
    ]
    
    var questionNumber = 0
    var score = 0
    
    func getQuestionText() -> String  {
        return quiz[questionNumber].text
    }
    
    mutating func nextQuestion() {
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            //TODO: go to results view controller - segue to show modally
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(textInput: String) {
        
        if textInput == quiz[questionNumber].correctAnswer {
            print("Correct")
            score += 1
            nextQuestion()
        } else {
            nextQuestion()
        }
    }
}

