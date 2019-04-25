//
//  ChangeHabitsTableViewCell.swift
//  HealthyLifeStyle
//
//  Created by Anupkumar on 24/04/19.
//  Copyright © 2019 Anupkumar. All rights reserved.
//

import UIKit

class ChangeHabitsTableViewCell: CustomVideoTableViewCell {
    
    @IBOutlet weak var gradient_view:UIView!{
        didSet{
            setGradientForVideoViewBackground(colorOne: UIColor.black.withAlphaComponent(0.3), colorTwo: UIColor.clear,view:(gradient_view)!)
        }
    }
    
    @IBOutlet weak var progress_view:UIProgressView!{
        didSet{
            progress_view.to_design_progress_bar()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
