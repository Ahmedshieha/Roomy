//
//  RoomCell.swift
//  Roomy
//
//  Created by Reda on 8/22/20.
//  Copyright © 2020 codin. All rights reserved.
//

import UIKit

class RoomCell: UITableViewCell {

    @IBOutlet weak var customView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var placeRoom: UILabel!
    
    @IBOutlet weak var priceLable: UILabel!
    @IBOutlet weak var titleRoom: UILabel!
    
    func configureCell (place: String,title:String ,price:String) {
        placeRoom.text = place
        titleRoom.text = title
        priceLable.text = price
    }
    
    
}
