//
//  SignupViewController.swift
//  Roomy
//
//  Created by Reda on 6/19/20.
//  Copyright © 2020 codin. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var SignupName: UITextField!
    
    @IBOutlet weak var SignupUserName: UITextField!
    
    @IBOutlet weak var SignupPassowrd: UITextField!
    
    
    
    
    @IBAction func CreateButton(_ sender: UIButton) {
        
        let name = SignupName.text!
        let userName = SignupUserName.text!
        let Password = SignupPassowrd.text!
        
        let user = User(name: name, email: userName, password: Password)
        signup(user, complation: accountCreatSucsses)
        
    }
    
    func accountCreatSucsses() {
        print("account Create Sucsess")
    }
    
    
}
