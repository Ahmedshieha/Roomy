//
//  tableViewController.swift
//  Roomy
//
//  Created by Reda on 5/1/20.
//  Copyright © 2020 codin. All rights reserved.
//

import UIKit

class tableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10   }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
        return cell
        
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailsStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let DetailsViewController = detailsStoryBoard.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        self.present(DetailsViewController, animated: true, completion: nil)
    }
    
    

 

}
