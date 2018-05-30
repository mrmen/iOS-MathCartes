//
//  CarteTableTableViewController.swift
//  MathsCarte
//
//  Created by Thomas Etcheverria on 30/05/2018.
//  Copyright © 2018 Belette Team. All rights reserved.
//

import UIKit

class CarteTableTableViewController: UITableViewController {

    var carteNames = ["Théorème de Pythagore", "Théorème de Thalès", "Nombres relatifs", "Résolution d'équations", "Fonctions généralités", "Trigonométrie"]
    var carteFiles = ["pythagore", "thales", "relatifs", "equations", "fonctions", "trigonometrie"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return carteNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)

        cell.textLabel?.text = carteNames[indexPath.row]

        return cell
    }
    
    
    // This function is called before the segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // get a reference to the second view controller
        let secondViewController = segue.destination as! SecondViewController
        if segue.identifier == "Segue"{
            let row = tableView.indexPathForSelectedRow!.row
            secondViewController.receivedData = carteFiles[row]
        }
        else{
            secondViewController.receivedData = "null"
        }
        // set a variable in the second view controller with the data to pass
    }



}
