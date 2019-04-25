//
//  HeaderAdvanced.swift
//  HealthyLifeStyle
//
//  Created by Anupkumar on 24/04/19.
//  Copyright © 2019 Anupkumar. All rights reserved.
//

import Foundation
import UIKit

class HeaderAdvanced:UITableViewHeaderFooterView {
    
    @IBOutlet weak var lbl_title: UILabel!
    
    @IBOutlet weak var card_view: UIView!
    
    @IBOutlet weak var arrow_img_view: UIImageView!{
        didSet{
            arrow_img_view.setImageColor(color: UIColor.black)
        }
    }
    
    @IBOutlet weak var hieght_arrow_img_view:NSLayoutConstraint!
    
    
    /*
    var getViewModelExplanationResults:ViewModelExplanationResults! {
        didSet {
            lbl_question_no.text = "Q-\(getViewModelExplanationResults.questionslno ?? 0)"
            if getViewModelExplanationResults.questiontext?.isValidURL == true{
                hieght_arrow_img_view.constant = self.bounds.width / 1.2
                activity_indicator.isHidden = false
                activity_indicator.startAnimating()
                activity_indicator.color = UIColor.white
                lbl_question.text = ""; question_img_view.loadImageUsingCacheWithUrlString(getViewModelExplanationResults.questiontext ?? "")
            }else{
                activity_indicator.isHidden = true
                activity_indicator.color = UIColor.clear
                
                hieght_arrow_img_view.constant = 0
                lbl_question.text = getViewModelExplanationResults.questiontext
            }
            
        }
    }
    
    */
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    
}
