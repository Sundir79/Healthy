//
//  DashboardViewController.swift
//  HealthyLifeStyle
//
//  Created by Anupkumar on 23/04/19.
//  Copyright © 2019 Anupkumar. All rights reserved.
//

import UIKit

class DashboardViewController: BaseClassViewController{
    
    @IBOutlet weak var table_view:UITableView!
    
    @IBOutlet weak var view_select_date:UIView!
    
    
    @IBOutlet weak var lbl_select_date:UILabel!
    
    @IBOutlet weak var view_graph:UIView!
    
    @IBOutlet weak var view_up_arrow:UIView!
    
    @IBOutlet weak var img_up_arrow:UIImageView!
    
    @IBOutlet weak var view_cals_circular:UIView!
    
    @IBOutlet weak var lbl_cals_circular:UILabel!
    
    @IBOutlet weak var graph_hieght:NSLayoutConstraint!
    
    @IBOutlet weak var slider_to_graph:NSLayoutConstraint!
    
    @IBOutlet weak var slider_to_select_date:NSLayoutConstraint!
    
    @IBOutlet weak var BMI_view:UIView!
    
    var expand = false
    
   var custom_bmi_view = BMICalculatorScreen()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
        table_view.estimatedRowHeight = 1000
        table_view.rowHeight = UITableView.automaticDimension
        
         view_select_date.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.btn_date_clicked)))
        
        view_up_arrow.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.view_up_arrow_clicked)))
        
        BMI_view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.custom_bmi_view_clicked)))
        
    }
    
    @objc func custom_bmi_view_clicked(){
        container_custom_class_view(custom_class_view:custom_bmi_view,container_view:self.view)
        
        custom_bmi_view.total_view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.total_view_clicked)))
        
       // custom_class_view.close_btn.addTarget(self, action: #selector(close_btn_clicked), for: .touchUpInside)
        
       
    }
    
    @objc func total_view_clicked(){
        
         custom_bmi_view.removeFromSuperview()
    }
    
     @objc func view_up_arrow_clicked(){
        
        
        if expand == false{
            expand = true
            self.img_rotateView(targetView: img_up_arrow, duration: 0.2)
            UIView.animate(withDuration: 0.2) {
                
                self.view_graph.alpha = 0.0
                
                self.slider_to_graph.priority = UILayoutPriority.init(100)
                
                self.slider_to_select_date.priority = UILayoutPriority.init(999)
            }
        }else{
            expand = false
            
            
            UIView.animate(withDuration: 0.2) {
                
                self.view_graph.alpha = 1.0
                
                self.slider_to_graph.priority = UILayoutPriority.init(999)
                
                self.slider_to_select_date.priority = UILayoutPriority.init(100)
                
                self.showAnimate(view_set: self.view_graph)
            }
            stopAnimationForView(myView:img_up_arrow)
        }
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        self.navigationController?.navigationBar.isHidden = false
    }
    @objc func btn_date_clicked(){
        
         dateformatter.dateFormat = date_format
        
        
        to_add_date_picker()
        
        showAnimate(view_set: custom_date_picker)
        
        reloadpicker = { [weak self] ()  in
            ///UI chnages in main tread
            DispatchQueue.main.async {
                
                self?.btn_doneclicked()
            }
        }
        
        
    }
    
    @objc func btn_doneclicked(){
        
        self.lbl_select_date.text = picked_date
        
    }
    

}

extension DashboardViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DashboardTableViewCell", for: indexPath) as? DashboardTableViewCell
        
        
        
        return cell!
    }
    
    
}
