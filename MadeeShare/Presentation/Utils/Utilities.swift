//
//  Utilities.swift
//  MadeeShare
//
//  Created by made reihan on 24/03/24.
//

import UIKit

class Utilities {
    
    func customBorderTextField(withPlaceHolder placeHolder: String) -> PaddedTextField {
        let textField = PaddedTextField()
        textField.placeholder = placeHolder
        textField.borderStyle = .none
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.layer.borderWidth = 1.0
        textField.layer.cornerRadius = 5.0
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }
}
