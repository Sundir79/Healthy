//
//  TotalSubAdvancedCollectionViewCell.swift
//  HealthyLifeStyle
//
//  Created by Anupkumar on 24/04/19.
//  Copyright © 2019 Anupkumar. All rights reserved.
//

import UIKit

class TotalSubAdvancedCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var table_view :UITableView!
    
    @IBOutlet weak var lblmsgview: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.table_view.delegate = self
        self.table_view.dataSource = self
        
        table_view.rowHeight = UITableView.automaticDimension
        table_view.estimatedRowHeight = 1000
        
        // to_design_message_view_when_response_is_empty();
        
        // Do any additional setup after loading the view.
        // to_call_test_api();
    }
}

extension TotalSubAdvancedCollectionViewCell:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
}
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TotalSubAdvancedTableViewCell", for: indexPath) as? TotalSubAdvancedTableViewCell
        
        cell?.lbl_index.text = "\(indexPath.row + 1)."
        
        return cell!
    }
}
