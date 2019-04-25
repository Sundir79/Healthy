//
//  AdvancedLifeStyleViewController.swift
//  HealthyLifeStyle
//
//  Created by Anupkumar on 24/04/19.
//  Copyright © 2019 Anupkumar. All rights reserved.
//

import UIKit

class AdvancedLifeStyleViewController: BaseClassViewController {
    
    @IBOutlet weak var table_view:UITableView!
    
     var arr_ModelAdvanced = [ModelAdvanced]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let headerNib = UINib.init(nibName: "HeaderAdvanced", bundle: Bundle.main)
        self.table_view.register(headerNib, forHeaderFooterViewReuseIdentifier: "HeaderAdvanced")
        
        table_view.estimatedRowHeight = 500
        table_view.rowHeight = UITableView.automaticDimension
        
        table_view.sectionHeaderHeight = UITableView.automaticDimension
        table_view.estimatedSectionHeaderHeight = 500.0
        
        // Do any additional setup after loading the view.
        
        let row1 = rowModelAdvanced.init(sub_title:"Good news is almost 70-80% reduction in heart disease can be achieved by adopting to healthy life style (7 life style habits")
        
        
        
        let model_add1 = ModelAdvanced.init(title : "Heart beat",open_expand : false,row_ModelAdvanced : [row1])
        
        arr_ModelAdvanced.append(model_add1)
        
        let row2 = rowModelAdvanced.init(sub_title:"High blood Pressure (Hypertension) is known as the “silent killer” as usually no symptoms in 80-90% people. It usually get detected by chance during Blood Pressure Check-up.")
        
        
        
        let model_add2 = ModelAdvanced.init(title : "FACTS ABOUT DIABETES",open_expand : false,row_ModelAdvanced : [row2])
        
        arr_ModelAdvanced.append(model_add2)
    }
    
}

extension AdvancedLifeStyleViewController:UITableViewDataSource,UITableViewDelegate{
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return arr_ModelAdvanced.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if !(arr_ModelAdvanced[section].open_expand ?? false) {
            return 0
        }
        
        return arr_ModelAdvanced[section].row_ModelAdvanceds?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AdvancedLifeStyleTableViewCell", for: indexPath) as? AdvancedLifeStyleTableViewCell
        
        cell?.lbl_index.text = "\(indexPath.row + 1)."
        
        cell?.lbl_title.text = arr_ModelAdvanced[indexPath.section].row_ModelAdvanceds?[indexPath.row].sub_title
        
        return cell!
        
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "HeaderAdvanced") as! HeaderAdvanced
        
        headerView.lbl_title.text = arr_ModelAdvanced[section].title
        
        //headerView.getViewModelExplanationResults = arr_getViewModelExplanationResults[section]
        
        headerView.card_view.tag = section
        
        
        
        let isExpanded = arr_ModelAdvanced[section].open_expand ?? false
        
        if isExpanded {
            
            img_rotateView(targetView: headerView.arrow_img_view , duration: 0.2)
            
        } else {
            
            stopAnimationForView(myView: headerView.arrow_img_view)
           
        }
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(TapGestureRecognizer))
        headerView.card_view.addGestureRecognizer(tapGesture)
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return UITableView.automaticDimension
    }
    
    
    @objc func TapGestureRecognizer(sender: UITapGestureRecognizer) {
       
        let headerview = table_view.headerView(forSection: sender.view?.tag ?? 0) as? HeaderAdvanced
        
        
        let section = sender.view?.tag ?? 0
        
        var indexPaths = [IndexPath]()
        for row in ((arr_ModelAdvanced[section].row_ModelAdvanceds?.indices)!) {
            print(0, row)
            let indexPath = IndexPath(row: row, section: section)
            indexPaths.append(indexPath)
        }
        
        let isExpanded = arr_ModelAdvanced[section].open_expand ?? false
        arr_ModelAdvanced[section].open_expand = !isExpanded
        
        arr_ModelAdvanced[section].open_expand = isExpanded ? false : true
        
        if isExpanded {
           
            stopAnimationForView(myView: headerview?.arrow_img_view)
           table_view.deleteRows(at: indexPaths, with: .fade)
            
        } else {
            
            table_view.insertRows(at: indexPaths, with: .fade)
            
            img_rotateView(targetView: headerview?.arrow_img_view , duration: 0.2)
            
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SubAdvancedViewController") as? SubAdvancedViewController
        
        
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}
