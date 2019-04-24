//
//  BuildingInfoTableViewController.swift
//  aboutHanyang
//
//  Created by th on 18/04/2019.
//  Copyright © 2019 TaeHyeong97HYU. All rights reserved.
//

import UIKit

class BuildingInfoTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Buildings.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "buildingNum", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = Buildings[indexPath.row].name
        cell.detailTextLabel?.text = Buildings[indexPath.row].info.content?.image_list?[0]

        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let destVC = segue.destination as! DetailViewController
        let destVC2 = segue.destination as! DetailViewController
        let selectedCategory = Buildings[self.tableView.indexPathForSelectedRow!.row].name
        let selectedImage = Buildings[self.tableView.indexPathForSelectedRow!.row].info.content?.image_list?[0]
        destVC.name = selectedCategory
        destVC2.image = selectedImage!
    }
}
