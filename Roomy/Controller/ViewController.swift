//
//  ViewController.swift
//  Roomy
//
//  Created by Reda on 3/10/20.
//  Copyright © 2020 codin. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
   
    @IBAction func startButton(_ sender: UIButton) {
        gotosignin()
        
    }
    
    func gotosignin()  {
        let signinstoryboard = UIStoryboard(name: "Main", bundle: nil)
        let SigninViewController = signinstoryboard.instantiateViewController(withIdentifier: "SigninViewController")
        self.navigationController?.pushViewController(SigninViewController, animated: true)
    }
    
}

