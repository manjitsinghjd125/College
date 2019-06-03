//
//  TorontoTableViewCell.swift
//  College
//
//  Created by Manjit Singh on 12/11/17.
//  Copyright © 2017 Manjit Singh. All rights reserved.
//

import UIKit

class TorontoTableViewCell: UITableViewCell {
    @IBOutlet weak var seats: UILabel!
    
    @IBOutlet weak var course_name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
