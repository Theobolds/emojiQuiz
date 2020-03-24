//
//  ATButton.swift
//  emojiQuiz
//
//  Created by alex theobold on 24/03/2020.
//  Copyright © 2020 alex theobold. All rights reserved.
//

import UIKit

class ATButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    
    private func setupButton() {
        // button styling
    }

}
