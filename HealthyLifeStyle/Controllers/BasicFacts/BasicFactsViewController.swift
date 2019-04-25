//
//  BasicFactsViewController.swift
//  HealthyLifeStyle
//
//  Created by Anupkumar on 24/04/19.
//  Copyright © 2019 Anupkumar. All rights reserved.
//

import UIKit

class BasicFactsViewController: BaseClassViewController {

    
    @IBOutlet weak var table_view:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        table_view.rowHeight = 200
        
        // Do any additional setup after loading the view.
    }
    
}

extension BasicFactsViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BasicFactsTableViewCell", for: indexPath) as? BasicFactsTableViewCell
        
        
        
        
        return cell!
        
    }
    
    
}
