//
//  GetAllRooms.swift
//  Roomy
//
//  Created by Reda on 6/26/20.
//  Copyright © 2020 codin. All rights reserved.
//

import Foundation
import Alamofire


class RoomRequest {
    
    static func getRoomRequest(_ result : [String:String], completionHandler : @escaping (Result<[Room],Error>) -> Void) {
let headers : HTTPHeaders = ["Authorization": result["auth_token"]!]
    

    AF.request(getRoom, method: .get,headers: headers).responseData{response in
        
        switch response.result {
        case.success(let data):
            do {
                let rooms = try JSONDecoder().decode([Room].self, from: data)
                completionHandler(.success(rooms))
            }
            catch let error {
                completionHandler(.failure(error))
            }
        case.failure(let error) :
            completionHandler(.failure(error))
        }
    }
    
}
}
    


