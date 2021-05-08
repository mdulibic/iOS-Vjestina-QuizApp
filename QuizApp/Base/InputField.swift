//
//  inputField.swift
//  QuizApp
//
//  Created by Marta Dulibić on 10.04.2021..
//

import UIKit

public class InputField: UITextField {
    
    init(placeholder: String) {
        super.init(frame: .zero)
        self.delegate = self
        isUserInteractionEnabled = true 
        font = UIFont(name: "Source Sans Pro", size: 16)
        backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.3)
        layer.cornerRadius = 8
        attributedPlaceholder = NSAttributedString(string: placeholder,
                                     attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension InputField: UITextFieldDelegate {
    public func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
            return true;
        }

 
    public func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.white.cgColor
    }
    
    public func textFieldDidEndEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 0.0
    }
    
}
