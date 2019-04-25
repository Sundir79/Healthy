//
//  LifeStyleDiseaseFactsViewController.swift
//  HealthyLifeStyle
//
//  Created by Anupkumar on 24/04/19.
//  Copyright © 2019 Anupkumar. All rights reserved.
//

import UIKit

class LifeStyleDiseaseFactsViewController:BaseClassViewController {
    
    @IBOutlet weak var table_view:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        table_view.estimatedRowHeight = 500
        table_view.rowHeight = UITableView.automaticDimension

        // Do any additional setup after loading the view.
    }
    
}

extension LifeStyleDiseaseFactsViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LifeStyleDiseaseFactsTableViewCell", for: indexPath) as? LifeStyleDiseaseFactsTableViewCell
        
        cell?.lbl_index.text = "\(indexPath.row + 1)."
        
        return cell!
        
    }
    
    
}
