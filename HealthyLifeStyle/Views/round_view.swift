//
//  round_view.swift
//  HealthyLifeStyle
//
//  Created by Anupkumar on 22/04/19.
//  Copyright © 2019 Anupkumar. All rights reserved.
//

import Foundation
import UIKit
extension UIView{
    
    func to_make_border(color:UIColor){
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = 1
    }
}

extension NSLayoutConstraint {
    
    func setMultiplier(multiplier:CGFloat) -> NSLayoutConstraint {
        
        NSLayoutConstraint.deactivate([self])
        
        let newConstraint = NSLayoutConstraint(
            item: firstItem as Any,
            attribute: firstAttribute,
            relatedBy: relation,
            toItem: secondItem,
            attribute: secondAttribute,
            multiplier: multiplier,
            constant: constant)
        
        newConstraint.priority = priority
        newConstraint.shouldBeArchived = self.shouldBeArchived
        newConstraint.identifier = self.identifier
        
        NSLayoutConstraint.activate([newConstraint])
        return newConstraint
    }
}
extension UIProgressView{
    func to_design_progress_bar(){
        
        
        self.progressViewStyle = .bar
        
        self.transform = self.transform.scaledBy(x: 1, y: 3)
        
       // self.layer.cornerRadius = 10.0
        
       // self.clipsToBounds = true
        /*
        if self.layer.sublayers?.count ?? 0 > 1{
            self.layer.sublayers![1].cornerRadius = 10.0
            
            self.subviews[1].clipsToBounds = true
        }
        */
    }
}

extension UIImageView{
func setImageColor(color: UIColor) {
    let templateImage = self.image?.withRenderingMode(UIImage.RenderingMode.alwaysTemplate)
    self.image = templateImage
    self.tintColor = color
}
}
