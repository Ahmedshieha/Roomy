//
//  SigninViewController.swift
//  Roomy
//
//  Created by Reda on 4/30/20.
//  Copyright © 2020 codin. All rights reserved.
//

import UIKit

class SigninViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SigninButton(_ sender: UIButton) {
        
      gototableView()
        
    
        
    }
    
    
    func gototableView()  {
                let tableViewStoryBoard = UIStoryboard(name: "Main", bundle: nil)
                let tableViewController = tableViewStoryBoard.instantiateViewController(withIdentifier: "tableViewController")
                self.navigationController?.pushViewController(tableViewController, animated: true)
            }

    @IBOutlet weak var usernameTextFile: UITextField!
    
    @IBOutlet weak var passwordTextFile: UITextField!
    
    
    
}
