//
//  Person1TableViewController.swift
//  table
//
//  Created by admin2 on 17.04.2021.
//

import UIKit

class Person1TableViewController: UITableViewController {
    
    private let data = Dataset(numberOfPeople: PersonSourceData().names.count).getData()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        cell.textLabel?.text = data[indexPath.row].name + " " + data[indexPath.row].surname

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailed" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let resultVC = segue.destination as! DetailedViewController
                resultVC.name = data[indexPath.row].name + " " + data[indexPath.row].surname
                resultVC.email = data[indexPath.row].email
                resultVC.phone = data[indexPath.row].phone
            }
        } else if segue.identifier == "detailsTable" {
            let resultVC = segue.destination as! Person2TableViewController
            resultVC.data = data
        }
    }
}
