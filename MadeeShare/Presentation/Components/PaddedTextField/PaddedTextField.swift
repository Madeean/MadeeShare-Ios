//
//  PaddedTextField.swift
//  MadeeShare
//
//  Created by made reihan on 08/09/24.
//

import UIKit

class PaddedTextField: UITextField {
    
    var textPadding = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: textPadding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: textPadding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: textPadding)
    }
}
