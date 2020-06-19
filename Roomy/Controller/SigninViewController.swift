//
//  SigninViewController.swift
//  Roomy
//
//  Created by Reda on 4/30/20.
//  Copyright © 2020 codin. All rights reserved.
//

import UIKit
import Alamofire
class SigninViewController: UIViewController {

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
        login(user, complation: gototableView)
       
    }
    
    @IBAction func signupButton(_ sender: Any) {
        gotoSignup()
    }
    
    
    func gototableView()  {
                let tableViewStoryBoard = UIStoryboard(name: "Main", bundle: nil)
                let tableViewController = tableViewStoryBoard.instantiateViewController(withIdentifier: "tableViewController")
                self.navigationController?.pushViewController(tableViewController, animated: true)
            }
    
    

    func gotoSignup() {
        let SignupStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let SignupViewController = SignupStoryBoard.instantiateViewController(withIdentifier: "SignupViewController")
        self.navigationController?.pushViewController(SignupViewController, animated: true)
    }
    
}

