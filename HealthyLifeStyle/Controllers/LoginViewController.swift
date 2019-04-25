//
//  LoginViewController.swift
//  HealthyLifeStyle
//
//  Created by Anupkumar on 22/04/19.
//  Copyright © 2019 Anupkumar. All rights reserved.
//

import UIKit

class LoginViewController: BaseClassViewController {

    @IBOutlet weak var btn_register:UIButton!
    
    @IBOutlet weak var view_login:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        view_login.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.view_login_clicked)))

        btn_register.addTarget(self, action: #selector(register_clicked), for: .touchUpInside)
    }
    
    @objc func view_login_clicked(){
        
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DashboardViewController") as? DashboardViewController
        
        
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        self.navigationController?.navigationBar.isHidden = true
    }
    
    @objc func register_clicked(){
    container_custom_class_view(custom_class_view:custom_register_view,container_view:self.view)
        
        custom_register_view.expert_img_view.to_make_border(color:Colors.tabnewdarkgrey)
        
        custom_register_view.patient_img_view.to_make_border(color:Colors.tabnewdarkgrey)
        
        
        
    }
}
