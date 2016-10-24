//
//  RestaurantTableViewController.swift
//  FoodPin
//
//  Created by 이 건준 on 2016. 10. 20..
//  Copyright © 2016년 SSU. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {
    
    var restaurantNames = ["Cafe Deadend", "Homei","Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "Thai Cafe"]
    
    var restaurantImages = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg", "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg", "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg", "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg", "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg", "donostia.jpg", "royaloak.jpg", "caskpubkitchen.jpg"]
    
    var restaurantLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "New York", "New York", "New York", "New York", "New York", "New York", "New York", "London", "London",
        "London", "London"]
    
    var restaurantTypes = ["Coffee & Tea Shop","Cafe", "Tea House", "Austrian / Causual Drink",
                           "French", "Bakery", "Bakery", "Chocolate", "Cafe","American / Seafood", "American", "American",
                           "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish",
                           "Spanish", "British", "Thai"]
    

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            let cellIdentifier = "Cell"
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as!RestaurantTableViewCell
            //as!는 형 변환 실패할 경우가 없는 경우 내가 형변환이 되는걸 확실히 아는 경우 만약 nil이 나오면 다음에 이 변수를 사용할 때 죽어버림.
            //as?는 형 변환 만약 실패할 경우 nil이 된다. 성공하면 원래 타입
            // Configure the cell...
            cell.nameLabel.text = restaurantNames[indexPath.row]
            cell.locationLabel.text = restaurantLocations[indexPath.row]
            cell.typeLabel.text = restaurantTypes[indexPath.row]
            cell.thumbnailImageView.image = UIImage(named: restaurantImages[indexPath.row])
            
            //cell.thumbnailImageView.layer.cornerRadius = 30.0
            //cell.thumbnailImageView.clipsToBounds = true
            return cell
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
