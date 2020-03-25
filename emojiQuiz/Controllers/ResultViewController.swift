//
//  ResultViewController.swift
//  emojiQuiz
//
//  Created by alex theobold on 25/03/2020.
//  Copyright © 2020 alex theobold. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    let resultLabel = UILabel()
    let retryButton = ATButton()
    var finalScore = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        resultLabel.text = String(finalScore)
        print(finalScore)
        viewScore()
        closeView()
    }
    
    func viewScore() {
        resultLabel.font = resultLabel.font.withSize(150)
        resultLabel.textAlignment = .center
        
        view.addSubview(resultLabel)
        
        //constraints
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        resultLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        resultLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        resultLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        resultLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive = true
    }
    
    @objc func tryAgain() {
        self.dismiss(animated: true, completion: nil)
    }
    
    func closeView() {
        retryButton.setTitle("Try Again", for: .normal)
        retryButton.addTarget(self, action: #selector(tryAgain), for: .touchUpInside)
        
        view.addSubview(retryButton)
        
        // constraints
        retryButton.translatesAutoresizingMaskIntoConstraints = false
        retryButton.translatesAutoresizingMaskIntoConstraints = false
        retryButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        retryButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        retryButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        retryButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
    }
}
