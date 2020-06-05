//
//  Signin.swift
//  Roomy
//
//  Created by Reda on 6/5/20.
//  Copyright © 2020 codin. All rights reserved.
//

import Foundation

struct Signinjson : Codable {
    let auth_token : String
}


class Signin  {
    enum Endpoint:String {
        case Login = "https://roomy-application.herokuapp.com/auth/login"
        
        var url : URL {
            return URL (string: self.rawValue)!
        }
    }
    
    
    
}
