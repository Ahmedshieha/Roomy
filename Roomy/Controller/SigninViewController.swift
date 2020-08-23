//
//  SigninViewController.swift
//  Roomy
//
//  Created by Reda on 4/30/20.
//  Copyright © 2020 codin. All rights reserved.
//

import UIKit
import Alamofire
import NVActivityIndicatorView

class SigninViewController: UIViewController,NVActivityIndicatorViewable {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
  
    }
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func SigninButton(_ sender: UIButton) {
        let email = userNameTextField.text!
        let password = passwordTextField.text!
        let user = User(name: "", email: email , password: password)
        Login.login(user, combletion: goToTableView)
       
    }
    
    @IBAction func signupButton(_ sender: Any) {
        gotoSignup()
        
    }
    
    
}

extension SigninViewController {
    
    func gotoSignup() {
         let SignupStoryBoard = UIStoryboard(name: "Main", bundle: nil)
         let SignupViewController = SignupStoryBoard.instantiateViewController(withIdentifier: "SignupViewController")
         self.navigationController?.pushViewController(SignupViewController, animated: true)
     }
     func goToTableView() {
           let tableViewController = UIStoryboard(name: "Main", bundle: nil)
           let TableViewController = tableViewController.instantiateViewController(withIdentifier: "TableViewController")
           self.navigationController?.pushViewController(TableViewController, animated: true)
       }
     
}
