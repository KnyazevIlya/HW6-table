//
//  Person2TableViewController.swift
//  table
//
//  Created by admin2 on 17.04.2021.
//

import UIKit

class Person2TableViewController: UITableViewController {
    
    //MARK: - public properties
    var data: [Person] = []
    
    //MARK: - private properties
    private let sectionHeaderHeight: CGFloat = 40
    private let mainColor: UIColor = UIColor(displayP3Red: 0.34509803921568627, green: 0.33725490196078434, blue: 0.8392156862745098, alpha: 0.6)

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    //MARK: - private methods
    //takes Person instance and returns a list of properties to choose them by index
    private func personListInfo(instance: Person) -> [String] {
        var info: [String] = []
        info.append(instance.phone)
        info.append(instance.email)
        return info
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Person.contectInfoFields()
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)
        cell.textLabel?.text = personListInfo(instance: data[indexPath.section])[indexPath.row]

        return cell
    }
    
    //MARK: - section style
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: sectionHeaderHeight))
        view.backgroundColor = mainColor
        
        let label = UILabel(frame: CGRect(x: 15, y:0, width: view.frame.width - 15, height: sectionHeaderHeight))
        label.text = data[section].name + " " + data[section].surname
        label.textColor = .white
        
        view.addSubview(label)
        
        return view
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return sectionHeaderHeight
    }
}
