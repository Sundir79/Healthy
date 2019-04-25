//
//  ChooseYourRoleViewController.swift
//  HealthyLifeStyle
//
//  Created by Anupkumar on 19/04/19.
//  Copyright © 2019 Anupkumar. All rights reserved.
//

import UIKit

class ChooseYourRoleViewController: BaseClassViewController{
    @IBOutlet weak var view_choose_role:UIView!
    
    @IBOutlet weak var view_user:UIView!
    
    @IBOutlet weak var lbl_user:UILabel!
    
    @IBOutlet weak var view_Guest:UIView!
    
    @IBOutlet weak var lbl_Guest:UILabel!
    
   // @IBOutlet weak var view_parent:UIView!
    
   // @IBOutlet weak var lbl_parent:UILabel!
    
    @IBOutlet weak var lbl_neverstop:UILabel!
    
    @IBOutlet weak var lbl_welcome:UILabel!
    
    @IBOutlet weak var lbl_choose:UILabel!
    
    @IBOutlet weak var bottom_axis_with_safearea_prority_1000:NSLayoutConstraint!
    
    @IBOutlet weak var bottom_axis_with_total_view_prority_100:NSLayoutConstraint!
    
    @IBOutlet weak var hieght_of_total_stack:NSLayoutConstraint!
    
    @IBOutlet weak var total_module_view:UIView!
    
    @IBOutlet weak var stack_view:UIView!
    
    @IBOutlet weak var healthy_img:UIImageView!
    
    var is_role_clicked = false
    
    
    // let theme = ThemeManager.currentTheme()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         self.to_make_background_have_gradient()
        
        self.view_choose_role.layer.cornerRadius = 20
        
        hieght_of_total_stack.constant = 0
        
        /*
        
        lbl_user.to_design_lbl_size_16()
        
        lbl_parent.to_design_lbl_size_16()
        
        lbl_Guest.to_design_lbl_size_16()
        
        
        lbl_neverstop.to_design_lbl_size_17()
        
        lbl_welcome.to_design_lbl_size_22()
        
        lbl_choose.fontsize_of_label(fontSize: fontsize_16, fontName: Helvetica_Bold_font_name)
        
        */
        
        to_make_background_view_colour(custom_view:view_user,custom_lbl:lbl_user)
        
        to_make_background_view_colour(custom_view:view_Guest,custom_lbl:lbl_Guest)
        
        view_choose_role.backgroundColor = ThemeColor.hexStringToUIColor(hex: "16A1AB")
       
        
        lbl_welcome.textColor = ThemeManager.currentTheme().titleTextColor
        
        lbl_neverstop.textColor = ThemeManager.currentTheme().titleTextColor
        
        lbl_choose.textColor = ThemeManager.currentTheme().titleTextColor
        
        // total_module_view.isHidden = true;
        view_choose_role.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.view_choose_role_click)))
        
        view_user.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.view_user_click)))
        
        view_Guest.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.view_Guest_click)))
        
        // Do any additional setup after loading the view.
    }
    
    
    func to_make_background_view_colour(custom_view:UIView,custom_lbl:UILabel){
        custom_view.backgroundColor = Colors.tabnewdarkgrey
        custom_lbl.textColor = ThemeManager.currentTheme().titleTextColor
        
        
    }
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.navigationBar.isHidden = true
        self.tabBarController?.tabBar.isHidden = true
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        healthy_img.layer.cornerRadius = healthy_img.frame.width / 2
    }
    
    @objc func  view_user_click(sender:UITapGestureRecognizer){
       
        login_to_navigate_using_push_VC(storyboard_id: "LoginViewController", user_typeid: 5)
    }
    @objc func  view_Guest_click(sender:UITapGestureRecognizer){
        
        login_to_navigate_using_push_VC(storyboard_id: "LoginViewController", user_typeid: 3)
    }
    func login_to_navigate_using_push_VC(storyboard_id:String,user_typeid:Int){
        
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: storyboard_id) as? LoginViewController
        
        
        self.navigationController?.pushViewController(vc!, animated: true)

    }
    
    @objc func view_choose_role_click(sender:UITapGestureRecognizer)  {
        if is_role_clicked == false{
            hieght_of_total_stack.constant = 150
            // bottom_stack_view_axis.constant = -(self.stack_view.frame.height)
            
            // total_module_view.isHidden = false
            is_role_clicked = true
            bottom_axis_with_safearea_prority_1000.priority = UILayoutPriority(rawValue: 100)
            bottom_axis_with_total_view_prority_100.priority = UILayoutPriority(rawValue: 999)
            
            
            UIView.animate(withDuration: 0.5) {
                self.view.layoutIfNeeded()
            }
            
            
        }else{
            
            
            is_role_clicked = false
            //  bottom_stack_view_axis.constant = 0
            
            bottom_axis_with_safearea_prority_1000.priority = UILayoutPriority(rawValue: 999)
            bottom_axis_with_total_view_prority_100.priority = UILayoutPriority(rawValue: 100)
            
            
            self.hieght_of_total_stack.constant = 0
            UIView.animate(withDuration: 0.5) {
                
                self.view.layoutIfNeeded()
                
                // self.total_module_view.isHidden = true
            }
            
            
            
            // bottom_axis_with_safearea_prority_1000.isActive = true
        }
        
        
    }
    
}
