//
//  CustomTopBarViewController.swift
//  MadeeShare
//
//  Created by made reihan on 08/09/24.
//

import UIKit

class CustomTopBarViewController: UIView {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let leftButton: UIButton = {
        let button = UIButton()
        button.setTitle("Back", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let rightButton: UIButton = {
        let button = UIButton()
        button.setTitle("Add", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    init(title: String, leftButtonAction: Selector?, rightButtonAction: Selector?, target: Any?) {
        super.init(frame: .zero)
        backgroundColor = .gray
        
        titleLabel.text = title
        
        setupLayout()
        
        if let action = leftButtonAction {
            leftButton.addTarget(target, action: action, for: .touchUpInside)
        } else {
            leftButton.isHidden = true
        }
        
        if let action = rightButtonAction {
            rightButton.addTarget(target, action: action, for: .touchUpInside)
        } else {
            rightButton.isHidden = true
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        addSubview(titleLabel)
        addSubview(leftButton)
        addSubview(rightButton)
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            leftButton.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
            leftButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16)
        ])
        
        NSLayoutConstraint.activate([
            rightButton.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
            rightButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
    }
}

