//
//  ViewController.swift
//  InstaPhoto
//
//  Created by kasper on 9/16/20.
//  Copyright © 2020 Mahmoud Abdul-Wahab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let scrollView               = UIScrollView()
    let containerView            = UIView()
    
    lazy var profileImageBtn : UIButton = {
        let btn = UIButton(type: .system)
        btn.setImage(#imageLiteral(resourceName: "add-user").withRenderingMode(.alwaysOriginal), for: .normal)
        btn.addTarget(self, action: #selector(didTapSetImage), for: .touchUpInside)
        
        return btn
    }()
    
    lazy var emailTextField : UITextField = {
        let emailTF = UITextField()
        emailTF.layer.cornerRadius = 12
        emailTF.backgroundColor = UIColor(white: 0, alpha: 0.03)
        emailTF.borderStyle = .roundedRect
        emailTF.placeholder = "Email"
        emailTF.font  = UIFont.systemFont(ofSize: 14)
        return emailTF
    }()
    
    lazy var userNameTextField : UITextField = {
           let tF = UITextField()
           tF.layer.cornerRadius = 12
           tF.backgroundColor = UIColor(white: 0, alpha: 0.03)
           tF.borderStyle = .roundedRect
           tF.placeholder = "UserName"
           tF.font  = UIFont.systemFont(ofSize: 14)
           return tF
       }()
    
    lazy var passwordTextField : UITextField = {
           let tF = UITextField()
           tF.layer.cornerRadius = 12
           tF.backgroundColor = UIColor(white: 0, alpha: 0.03)
           tF.borderStyle = .roundedRect
           tF.placeholder = "Password"
           tF.isSecureTextEntry = true
           tF.font  = UIFont.systemFont(ofSize: 14)
           return tF
       }()
    
    
    
    lazy var signUpBtn : UIButton = {
           let btn = UIButton()
           btn.setTitle("Register", for: .normal)
        btn.backgroundColor = UIColor.rgb(red : 149 , green : 204  , blue : 244)
        btn.addTarget(self, action: #selector(didTapSignUpBtn), for: .touchUpInside)

           return btn
       }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTapAround()
        setUpUI()
    }

    private func setUpUI(){
        view.addSubview(scrollView)
        scrollView.addSubview(containerView)
        scrollView.pinToTheEdges(of: view)
        containerView.pinToTheEdges(of: scrollView)
        
        NSLayoutConstraint.activate([
          containerView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
          containerView.heightAnchor.constraint(equalToConstant: 800) // this is the height fro th e scroll view i will put it with the hieght of iphoneSE
        ])
        
        containerView.addSubview(profileImageBtn)
        
//        NSLayoutConstraint.activate([
//            profileImageBtn.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 70),
//            profileImageBtn.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
//            profileImageBtn.heightAnchor.constraint(equalToConstant: 150),
//            profileImageBtn.widthAnchor.constraint(equalToConstant: 150)
//        ])
        profileImageBtn.anchor(top: containerView.topAnchor, paddingTop: 70, leading: nil, paddingLeft: 0, bottom: nil, paddingBottom: 0, trailling: nil, paddingRight: 0, centerXTo: containerView.centerXAnchor, centerYTo: nil , width : 150 , height : 150)
        
        let stack = UIStackView(arrangedSubviews: [emailTextField , userNameTextField , passwordTextField , signUpBtn])
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 12
       
        containerView.addSubview(stack)
        
//        NSLayoutConstraint.activate([
//            stack.topAnchor.constraint(equalTo: profileImageBtn.bottomAnchor, constant: 30),
//                   stack.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
//                   stack.heightAnchor.constraint(equalToConstant: 250),
//
//                   stack.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
//
//                   stack.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20)
//               ])
//        
        stack.anchor(top: profileImageBtn.bottomAnchor, paddingTop: 40, leading: containerView.leadingAnchor, paddingLeft: 20, bottom: nil, paddingBottom: 0, trailling: containerView.trailingAnchor, paddingRight: -20, centerXTo: containerView.centerXAnchor, centerYTo: nil, width: 0, height: 250)
    }
    
    
    @objc private func didTapSetImage(){
        print("Select Image ")
    }
    
    @objc private func didTapSignUpBtn(){
        print(" Sign UP ")

    }
}

