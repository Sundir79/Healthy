//
//  CustomRegisterView.swift
//  HealthyLifeStyle
//
//  Created by Anupkumar on 22/04/19.
//  Copyright © 2019 Anupkumar. All rights reserved.
//

import Foundation
import UIKit

class CustomRegisterView: UIView {
    
    @IBOutlet weak var total_view:UIView!
    
    @IBOutlet weak var patient_img_view:UIImageView!
    
    @IBOutlet weak var expert_img_view:UIImageView!
    
    override init(frame:CGRect){
        super.init(frame: frame)
        print("........21")
        commoninit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        print("........29")
        //fatalError("init(coder:) has not been implemented")
        // commoninit()
        
        
    }
    
    
    
    
    func commoninit(){
        print("...........34")
        Bundle.main.loadNibNamed("CustomRegisterView", owner: self, options: nil)
        addSubview(self.total_view)
        
        self.total_view.frame = self.bounds
        
        
        self.total_view.autoresizingMask = [.flexibleHeight,.flexibleWidth]
        
        
    }
}
