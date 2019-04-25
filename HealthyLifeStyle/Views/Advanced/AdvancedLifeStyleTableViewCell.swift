//
//  AdvancedLifeStyleTableViewCell.swift
//  HealthyLifeStyle
//
//  Created by Anupkumar on 24/04/19.
//  Copyright © 2019 Anupkumar. All rights reserved.
//

import UIKit

class AdvancedLifeStyleTableViewCell: UITableViewCell {

    @IBOutlet weak var lbl_index:UILabel!
    
    @IBOutlet weak var lbl_title:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
