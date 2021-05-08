//
//  Button.swift
//  QuizApp
//
//  Created by Marta Dulibić on 06.05.2021..
//

import Foundation
import UIKit

class Button: UIButton {
    init() {
        super.init(frame: .zero)
        backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        setTitleColor(UIColor(red: 0.387, green: 0.16, blue: 0.871, alpha: 1), for: .normal)
        layer.cornerRadius = 8
        snp.makeConstraints { make in
            make.height.equalTo(56)
        }

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public var isEnabled: Bool {
        didSet {
            if isEnabled {
                backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
            } else {
                backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.6)
            }
        }
    }
    
    override var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                backgroundColor = backgroundColor?.withAlphaComponent(0.9)
            } else {
                backgroundColor = backgroundColor?.withAlphaComponent(1)
            }
        }
    }
}
