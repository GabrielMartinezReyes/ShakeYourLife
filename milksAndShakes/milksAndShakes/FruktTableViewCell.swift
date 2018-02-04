//
//  FruktTableViewCell.swift
//  milksAndShakes
//
//  Created by Gabriel Martinez on 2018-02-04.
//  Copyright © 2018 Gabriel Martinez. All rights reserved.
//

import UIKit

class FruktTableViewCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    
    @IBOutlet weak var fruktImage: UIImageView!
    
    @IBOutlet weak var fruktLabel: UILabel!
    
    
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
