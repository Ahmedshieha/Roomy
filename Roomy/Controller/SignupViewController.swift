//
//  SignupViewController.swift
//  Roomy
//
//  Created by Reda on 6/19/20.
//  Copyright © 2020 codin. All rights reserved.
//

import UIKit

import JGProgressHUD
class SignupViewController: UIViewController {
    
    @IBOutlet weak var signUpButtonLayout: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let hud = JGProgressHUD()
    
    
    @IBAction func signUpButton(_ sender: UIButton) {
        
        signUp()
        
    }
    
    func accountCreatSucsses() {
        print("account Create Sucsess")
    }
    override func viewDidLoad() {
        signUpButtonLayout.layer.cornerRadius = 10
    }
    
    private func signUp () {
        
        if textFieldsIsNotEmpty() {
            let name = nameTextField.text!
            let userName = emailTextField.text!
            let Password = passwordTextField.text!
            let user = User(name: name, email: userName, password: Password)
            SignUp.signup(user) { error in
                if error == nil {
                    self.showNotification(title: "success", isError: false)
                } else {
                    self.showNotification(title: "Error", isError: true)
                    
                }
            }
        } else {
            showNotification(title: "please complete fields", isError: true)
        }
        
        
    }
    func textFieldsIsNotEmpty() -> Bool {
        return (nameTextField.text != "" && emailTextField.text != "" && passwordTextField.text != "" )
    }
    
    func showNotification(title:String , isError : Bool) {
        
        if isError {
            self.hud.indicatorView = JGProgressHUDErrorIndicatorView()
        } else {
            self.hud.indicatorView = JGProgressHUDSuccessIndicatorView()
        }
        hud.textLabel.text = title
        hud.show(in: self.view)
        hud.dismiss(afterDelay: 2.0)
        
    }
    
}
