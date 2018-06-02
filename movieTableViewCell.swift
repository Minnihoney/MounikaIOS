//
//  bookTableViewCell.swift
//  tableView
//
//  Created by epita on 04/04/2018.
//  Copyright © 2018 epita. All rights reserved.
//

import UIKit

class movieTableViewCell: UITableViewCell {

    @IBOutlet weak var lab1: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lab2: UILabel!
    
        @IBOutlet weak var lab3: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
