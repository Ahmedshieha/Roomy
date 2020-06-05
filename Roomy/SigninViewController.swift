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
        
        print(Signin.Endpoint.Login.url)
        
    }
    
    
    func gototableView()  {
                let tableViewStoryBoard = UIStoryboard(name: "Main", bundle: nil)
                let tableViewController = tableViewStoryBoard.instantiateViewController(withIdentifier: "tableViewController")
                self.navigationController?.pushViewController(tableViewController, animated: true)
            }

    
    let task = URLSession.shared.dataTask(with: Signin.Endpoint.Login.url)  {(data,response,error) in
        guard let data = data  else{
            return
        }
        let decoder = JSONDecoder()
        let userData = try! decoder.decode(Signinjson.self, from: data)
        print(userData)
    }
    
    
    
    
}
