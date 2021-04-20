//
//  TableViewCell.swift
//  table
//
//  Created by admin2 on 20.04.2021.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    //MARK: - custom cell outlets
    @IBOutlet var cellSubview: UIView!
    @IBOutlet var subviewImage: UIImageView!
    @IBOutlet var subviewLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
