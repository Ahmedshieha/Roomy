//
//  Login.swift
//  Roomy
//
//  Created by Reda on 6/19/20.
//  Copyright © 2020 codin. All rights reserved.
//

import Foundation
import Alamofire
import UIKit

class Login  {
    
    
    static func login (_ user : User ,combletion : @escaping(_ error : Error? ) -> Void) {
    
    AF.request(loginUrl ,method: .post , parameters: user ,encoder: JSONParameterEncoder.default).responseJSON
        {response in
        if let status = response.response?.statusCode {
            switch (status) {
            case 200:
                 let result = response.value as! [String:String]
                    
                       if ((result["message"]) != nil) {

                       }
                        else{
                          print("success")
                            combletion(nil)
                        }
                 UserDefaults.standard.set(result, forKey: "Token")
            default:
                print("error")
        
            }
            
    }
    
    
}

}
    
}


