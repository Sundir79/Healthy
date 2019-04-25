//
//  ModelAdvanced.swift
//  HealthyLifeStyle
//
//  Created by Anupkumar on 24/04/19.
//  Copyright © 2019 Anupkumar. All rights reserved.
//

import Foundation


class ModelAdvanced : Decodable {
    
    
    let title : String?
    
    var open_expand : Bool?
    
    var row_ModelAdvanceds : [rowModelAdvanced]?
    
    
    init(title : String?,open_expand : Bool?,row_ModelAdvanced : [rowModelAdvanced]?) {
        
        self.title = title
       
        self.open_expand = false
        self.row_ModelAdvanceds = row_ModelAdvanced
        
    }
    
}

class rowModelAdvanced : Decodable {
    
    let sub_title : String?
    
    init(sub_title:String?) {
        self.sub_title = sub_title
    }
  
    
}
