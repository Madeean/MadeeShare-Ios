//
//  ViewController.swift
//  MadeeShare
//
//  Created by made reihan on 08/09/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Atur background view
        view.backgroundColor = .white
        
        // Buat label secara programmatic
        let label = UILabel()
        label.text = "Hello, UIKit without Storyboard!"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        // Tambahkan label ke view controller
        view.addSubview(label)
        
        // Atur constraints label
        label.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor)
    }
}

