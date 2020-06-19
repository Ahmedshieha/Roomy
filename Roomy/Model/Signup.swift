//
//  Signup.swift
//  Roomy
//
//  Created by Reda on 6/19/20.
//  Copyright © 2020 codin. All rights reserved.
//

import Foundation
import Alamofire

func signup (_ user : User , complation: @escaping() -> () ) {
    AF.request( signupUrl,method: .post , parameters: user ,encoder: JSONParameterEncoder.default).responseJSON{
        
        response in
        let result = response.value as! [String:String]
        
        if ((result["message"]) != nil) {
           print(result["message"]!)
            
            
        }
        else{
            print(result["auth_token"]!)
            complation()
        }
        
    }
    
}
