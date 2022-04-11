//
//  Signup.swift
//  Roomy
//
//  Created by Reda on 6/19/20.
//  Copyright © 2020 codin. All rights reserved.
//

import Foundation
import Alamofire

class SignUp {
    
    static func signup (_ user : User , completion : @escaping (_ error : Error?) -> Void ) {
    AF.request( signupUrl,method: .post , parameters: user ,encoder: JSONParameterEncoder.default).responseJSON{
        
        response in
        let result = response.value as! [String:String]
        
        if ((result["message"]) != nil) {
            
           print(result["message"]!)
            completion(nil)
    
        }
        else{
            let error = response.error
            completion(error)
            print(error!.localizedDescription)
            
    
        }
        
    }
    
}
}
