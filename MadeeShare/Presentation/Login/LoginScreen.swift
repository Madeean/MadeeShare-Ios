//
//  LoginScreen.swift
//  MadeeShare
//
//  Created by made reihan on 08/09/24.
//

import UIKit
class LoginScreen: UIViewController {
    
    private let emailTextField: UITextField = {
        let tf = Utilities().customBorderTextField(withPlaceHolder: "Email")
        return tf
    }()
    
    private let passwordTextField: UITextField = {
        let tf = Utilities().customBorderTextField(withPlaceHolder: "Password")
        tf.isSecureTextEntry = true
        return tf
    }()
    
    private let buttonLogin: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 12
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return button
    }()
    
    @objc func handleLogin() {
        print("login clicked")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUi()
    }
    
    private let appBar: CustomTopBarViewController = {
        let topBar = CustomTopBarViewController(
            title: "Login",
            leftButtonAction: nil,
            rightButtonAction: nil,
            target: LoginScreen.self
        )
        return topBar
    }()
    
    
    func setUi() {
        view.backgroundColor = .white
        
        view.addSubview(appBar)
        
        appBar.translatesAutoresizingMaskIntoConstraints = false
        appBar.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, right: view.rightAnchor, height: 60)
        
        view.addSubview(emailTextField)
        emailTextField.anchor(top: appBar.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 20, paddingLeft: 12, paddingRight: 12)
        
        view.addSubview(passwordTextField)
        passwordTextField.anchor(top: emailTextField.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 20, paddingLeft: 12, paddingRight: 12)
        
        view.addSubview(buttonLogin)
        buttonLogin.anchor(top: passwordTextField.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 20, paddingLeft: 12, paddingRight: 12)
        
        buttonLogin.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
    }
}
