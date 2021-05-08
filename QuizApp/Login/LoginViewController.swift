//
//  LoginViewController.swift
//  QuizApp
//
//  Created by Marta Dulibić on 10.04.2021..
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {

    private let scrollView = UIScrollView()
    private let contentView = UIView()
    private let titleLabel = UILabel()
    private let emailTextField = InputField(placeholder: "Email")
    private let passwordTextField = InputField(placeholder: "Password")
    private let loginButton = Button()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // view.font = UIFont(name: "Source Sans Pro", size: 32)
        renderUI()
    }
    
    
}

// MARK: UI
private extension LoginViewController {

    func renderUI() {
        setBackground()
        renderScrollView()
        renderTitle()
        renderEmailTextField()
        renderPasswordTextField()
        renderLoginButton()
    }
    
    func setBackground() {
        view.backgroundColor = .white
        let gradientLayer = CAGradientLayer()
        
        let colorTop = UIColor(red: 0.453, green: 0.308, blue: 0.637, alpha: 1).cgColor
        let colorBottom = UIColor(red: 0.154, green: 0.185, blue: 0.463, alpha: 1).cgColor
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        
        gradientLayer.startPoint = CGPoint(x: 0.25, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 0.75, y: 0.5)
        gradientLayer.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: -1.95, b: 1.41, c: -1.41, d: -0.41, tx: 2.02, ty: -0.01))
        gradientLayer.bounds = view.bounds.insetBy(dx: -0.5*view.bounds.size.width, dy: -0.5*view.bounds.size.height)
        
        gradientLayer.position = view.center
        view.layer.addSublayer(gradientLayer)
    }
    
    func renderScrollView() {
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints { (make) in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.right.left.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
        
        scrollView.addSubview(contentView)
        contentView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
            make.width.equalTo(UIScreen.main.bounds.width)
        }
    }
    
    func renderTitle() {
        contentView.addSubview(titleLabel)
        titleLabel.text = "PopQuiz"
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 32, weight: UIFont.Weight(rawValue: 700))
        titleLabel.textAlignment = .center
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().inset(60)
            make.right.left.equalToSuperview().inset(StyleGuide.gridPadding)
            
        }
        
    }
    
    func renderEmailTextField() {
        contentView.addSubview(emailTextField)
        emailTextField.snp.makeConstraints { (make) in
            make.top.equalToSuperview().inset(200)
            make.right.left.equalToSuperview().inset(StyleGuide.gridPadding)
            make.height.equalTo(44)
            make.width.equalTo(311)
        }
    }
    
    func renderPasswordTextField() {
        contentView.addSubview(passwordTextField)
        passwordTextField.snp.makeConstraints { (make) in
            make.top.equalTo(emailTextField.snp.bottom).offset(16)
            make.right.left.equalToSuperview().inset(StyleGuide.gridPadding)
            make.height.equalTo(44)
            make.width.equalTo(311)
        }
    }
    
    func renderLoginButton() {
        loginButton.setTitle("Login", for:  UIControl.State())
        contentView.addSubview(loginButton)
         loginButton.snp.makeConstraints { (make) in
            make.top.equalTo(passwordTextField.snp.bottom).offset(16)
            make.right.left.equalToSuperview().inset(StyleGuide.gridPadding)
            make.height.equalTo(44)
            make.width.equalTo(311)
           
        }
    }
   
}
