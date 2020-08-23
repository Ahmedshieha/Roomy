//
//  UIViewController+Extension.swift
//  Roomy
//
//  Created by Reda on 8/24/20.
//  Copyright © 2020 codin. All rights reserved.
//

import UIKit

extension UIViewController {
    
      func showAlert(title:String , messsage:String) {
        let alert = UIAlertController(title: title, message: messsage, preferredStyle: .alert)
        let action = UIAlertAction(title: "Error", style: .default, handler: nil)
        alert.addAction(action)
        present(alert,animated: true,completion: nil)
    }
}
