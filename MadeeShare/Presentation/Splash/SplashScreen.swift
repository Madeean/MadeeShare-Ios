//
//  SplashScreen.swift
//  MadeeShare
//
//  Created by made reihan on 08/09/24.
//

import UIKit
class SplashScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUi()
        navigateToLoginScreenAfterDelay()
    }
    
    private let backgroundGradient: CAGradientLayer = {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.blue.cgColor,
            UIColor.green.cgColor
        ]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0) // Kiri bawah
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.0)   // Kanan atas
        return gradientLayer
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Madee Share"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 32, weight: .bold)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private func navigateToLoginScreenAfterDelay() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { [weak self] in
            let loginVC = LoginScreen()
            loginVC.modalTransitionStyle = .crossDissolve
            loginVC.modalPresentationStyle = .fullScreen
            self?.present(loginVC, animated: true, completion: nil)
        }
    }
    
    func setUi() {
        view.layer.insertSublayer(backgroundGradient, at: 0)
        view.addSubview(label)
        label.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        // Pastikan frame gradient layer sesuai dengan ukuran view
        backgroundGradient.frame = view.bounds
    }
}
