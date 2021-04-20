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
    @IBOutlet var personImage: UIImageView!
    
    var name: String!
    var email: String!
    var phone: String!
    var imageName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        personImage.image = UIImage(named: imageName)
        personImage.layer.cornerRadius = personImage.frame.width / 2
        nameLabel.text = name
        emailLabel.text = "Email: \(email ?? "no email")"
        phoneLabel.text = "Phone: \(phone ?? "no phone number")"
    }
   
}
