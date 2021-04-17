//
//  DetailedViewController.swift
//  table
//
//  Created by admin2 on 17.04.2021.
//

import UIKit

class DetailedViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    var name: String!
    var email: String!
    var phone: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = name
        emailLabel.text = "Email: \(email ?? "")"
        phoneLabel.text = "Phone: \(phone ?? "")"
    }
   
}
