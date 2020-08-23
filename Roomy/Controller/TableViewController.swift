//
//  TableViewController.swift
//  Roomy
//
//  Created by Reda on 8/23/20.
//  Copyright © 2020 codin. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
private var rooms = [Room]()
    @IBOutlet weak var roomTableView: UITableView!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        registerCustomCells()
        fetchRoomsFromApi()
    }
    



}


extension TableViewController {
    
    private func registerCustomCells() {
          let roomCellNib = UINib(nibName: "RoomCell", bundle: nil)
          roomTableView.register(roomCellNib, forCellReuseIdentifier: "RoomCell")
      }
    
    
    
private func fetchRoomsFromApi() {
    let result = UserDefaults.standard.dictionary(forKey: "Token")
    RoomRequest.getRoomRequest(result as! [String : String] , completionHandler: {result in
            switch result {
                case.success(let rooms):
                    self.rooms = rooms
                    self.roomTableView.reloadData()
                case.failure(let error):
                    self.showAlert(title: "Error", messsage: error.localizedDescription)
            }
        })
  }
    
  
    
}


extension TableViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rooms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RoomCell") as! RoomCell
        cell.configureCell(place: rooms[indexPath.row].place, title: rooms[indexPath.row].title, price: rooms[indexPath.row].price!)
        return cell
    }
    
    
}
extension TableViewController : UITableViewDelegate {
    
}
