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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! CustomTableViewCell
        cell.subviewLabel.text = data[indexPath.row].name + " " + data[indexPath.row].surname
        cell.subviewImage.image = UIImage(named: "exampleImage")
        
        cell.cellSubview.layer.cornerRadius = cell.cellSubview.frame.height / 2
        cell.subviewImage.layer.cornerRadius = cell.subviewImage.frame.height / 2
        /*
        cell.textLabel?.text = data[indexPath.row].name + " " + data[indexPath.row].surname
        cell.imageView?.image = UIImage(named: "exampleImage")
        cell.imageView?.layer.cornerRadius = (cell.imageView?.frame.size.width)! / 2
        */
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailed" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let resultVC = segue.destination as! DetailedViewController
                resultVC.name = data[indexPath.row].name + " " + data[indexPath.row].surname
                resultVC.email = data[indexPath.row].email
                resultVC.phone = data[indexPath.row].phone
                resultVC.imageName = "exampleImage"
            }
        } else if segue.identifier == "detailsTable" {
            let resultVC = segue.destination as! Person2TableViewController
            resultVC.data = data
        }
    }
}

