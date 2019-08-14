//
//  MVCTableViewCell.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Phoenix McKnight on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class MVCTableViewCell: UITableViewCell {

    @IBOutlet weak var name1: UILabel!
    
    @IBOutlet weak var classification1: UILabel!
    @IBOutlet weak var viewImage1: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
