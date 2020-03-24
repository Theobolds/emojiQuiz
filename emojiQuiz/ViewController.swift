//
//  ViewController.swift
//  emojiQuiz
//
//  Created by alex theobold on 24/03/2020.
//  Copyright © 2020 alex theobold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        buttonStackView(buttons: 2)
    }
    
    @objc func onButton() {
        // handle button press event
        print("button pressed")
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
            btn.setTitle(String(format: "%.0f", button), for: .normal)
            btn.addTarget(self, action: #selector(onButton), for: .touchUpInside)
            
            buttonStack.addArrangedSubview(btn)
        }
        
        view.addSubview(buttonStack)
        
        // constraints
        buttonStack.translatesAutoresizingMaskIntoConstraints = false
        buttonStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        buttonStack.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        buttonStack.heightAnchor.constraint(equalToConstant: 200).isActive = true
        buttonStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
    }
}

