//
//  ViewController.swift
//  emojiQuiz
//
//  Created by alex theobold on 24/03/2020.
//  Copyright © 2020 alex theobold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var quizBrain = QuizBrain()
    let emoji = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        emojiView()
        buttonStackView(buttons: 2)
    }
    
    func emojiView() {
        emoji.text = quizBrain.getQuestionText()
        emoji.font = emoji.font.withSize(150)
        emoji.textAlignment = .center
        
        view.addSubview(emoji)
        
        //constraints
        emoji.translatesAutoresizingMaskIntoConstraints = false
        emoji.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        emoji.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        emoji.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        emoji.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive = true
    }
    
    @objc func onButton(sender: ATButton) {
        // handle button press event
        checkAnswer(textInput: sender.titleLabel!.text!)
    }

    func buttonStackView(buttons: Int) {
        
        let buttonStack = UIStackView()
        
        buttonStack.axis = .vertical
        buttonStack.alignment = .fill
        buttonStack.distribution = .fillEqually
        buttonStack.spacing = 10.0
        
        for button in 0 ..< buttons {
            let btn = ATButton()
            btn.translatesAutoresizingMaskIntoConstraints = false
            btn.tag = button.self
            btn.setTitle(quizBrain.quiz[quizBrain.questionNumber].answer[button], for: .normal)
            btn.addTarget(self, action: #selector(onButton), for: .touchUpInside)
            
            buttonStack.addArrangedSubview(btn)
        }
        
        view.addSubview(buttonStack)
        
        // constraints
        buttonStack.translatesAutoresizingMaskIntoConstraints = false
        buttonStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        buttonStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        buttonStack.heightAnchor.constraint(equalToConstant: 200).isActive = true
        buttonStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        
    }
    
    func checkAnswer(textInput: String) {
        print(textInput)
    }
}

