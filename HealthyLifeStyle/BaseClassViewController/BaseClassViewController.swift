//
//  BaseClassViewController.swift
//  HealthyLifeStyle
//
//  Created by Anupkumar on 19/04/19.
//  Copyright © 2019 Anupkumar. All rights reserved.
//

import UIKit

class BaseClassViewController: UIViewController {
    
    var custom_register_view = CustomRegisterView()
    
    let custom_date_picker: CustomDatePicker = {
        let date_picker = CustomDatePicker()
        date_picker.translatesAutoresizingMaskIntoConstraints = false
        
        return date_picker
    }()
    
    var reloadpicker = {() -> () in }
    
    var picked_date = ""
    
    let dateformatter = DateFormatter()
    
    var date_format = "dd MMM yyyy"
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        to_make_background_navigation_tabbar_have_gradient()
        
        
       
    }
    
    func to_make_background_navigation_tabbar_have_gradient(){
       // self.setGradientBackground(colorOne: ThemeManager.currentTheme().backgroundColor, colorTwo: ThemeManager.SecondforGradientcurrentTheme().backgroundColor)
        
        navigationController?.navigationBar.barTintColor = ThemeColor.hexStringToUIColor(hex:"53B597")
        
        
        
        /*
        guard
            
            let navigationController = navigationController,
            let flareGradientImage = self.primaryGradient(on: navigationController.navigationBar)
        
            
            else {
                print("Error creating gradient color!")
                return
        }
        
        navigationController.navigationBar.barTintColor = UIColor(patternImage: flareGradientImage)
        
        */
    }
    
    func to_make_background_have_gradient(){
        self.setGradientBackground(colorOne: ThemeManager.currentTheme().backgroundColor, colorTwo: ThemeManager.SecondforGradientcurrentTheme().backgroundColor)
        
    }
    
    func setGradientBackground(colorOne: UIColor, colorTwo: UIColor) {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [colorOne.cgColor,colorTwo.cgColor]
        gradientLayer.locations = [0.0,0.6]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    func setGradientForVideoViewBackground(colorOne: UIColor, colorTwo: UIColor,view:UIView) {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [colorOne.cgColor,colorTwo.cgColor]
        gradientLayer.locations = [0.0,1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
     func primaryGradient(on view: UIView) -> UIImage? {
        let gradient = CAGradientLayer()
        let flareRed = Colors.tabnewdarkgrey
        let flareOrange = Colors.tabnewlightgreen
        var bounds = view.bounds
        bounds.size.height += UIApplication.shared.statusBarFrame.size.height
        gradient.frame = bounds
        gradient.colors = [flareRed.cgColor, flareOrange.cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 0)
        return self.createGradientImage(on: view)
    }
    
     func createGradientImage(on view: UIView) -> UIImage? {
        var gradientImage: UIImage?
        let gradient = CAGradientLayer()
        UIGraphicsBeginImageContext(view.frame.size)
        if let context = UIGraphicsGetCurrentContext() {
            
            gradient.render(in: context)
            gradientImage = UIGraphicsGetImageFromCurrentImageContext()?.resizableImage(withCapInsets: UIEdgeInsets.zero, resizingMode: .stretch)
        }
        UIGraphicsEndImageContext()
        return gradientImage
    }
    
     func tabbarprimaryGradient(on view: UIView) -> UIImage? {
        let gradient = CAGradientLayer()
        let flareRed = ThemeManager.currentTheme().tab_backgroundColor
        let flareOrange = ThemeManager.SecondforGradientcurrentTheme().tab_backgroundColor
        var bounds = view.bounds
        bounds.size.height += UIApplication.shared.statusBarFrame.size.height
        gradient.frame = bounds
        gradient.colors = [flareRed.cgColor, flareOrange.cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 0)
        return self.createGradientImage(on: view)
    }
    
    func container_custom_class_view(custom_class_view:UIView,container_view:UIView)   {
        
        print("activity_indicator_start")
        
       // custom_class_view.backgroundColor = UIColor(red:68/255, green: 68/255, blue: 68/255, alpha: 0.7)
        
        
        custom_class_view.translatesAutoresizingMaskIntoConstraints = false
        
        
        container_view.addSubview(custom_class_view)
        
        custom_class_view.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        custom_class_view.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        custom_class_view.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        custom_class_view.heightAnchor.constraint(equalToConstant: self.view.frame.height).isActive = true
        
        container_view.bringSubviewToFront(custom_class_view)
        
        showAnimate(view_set: custom_class_view)
        
    }
    
    func showAnimate(view_set:UIView)
    {
        view_set.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        
        
        UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 5.0, options: UIView.AnimationOptions.curveLinear, animations: {
            
            view_set.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }, completion: nil)
    }
    
    func to_add_date_picker(){
        
        self.view.addSubview(custom_date_picker)
        
        
        custom_date_picker.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        custom_date_picker.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        custom_date_picker.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        custom_date_picker.heightAnchor.constraint(equalToConstant: self.view.frame.height).isActive = true
        
        self.view.bringSubviewToFront(self.custom_date_picker)
        
        let date = Date()
        
        
        let today = dateformatter.string(from: date)
        
        if let day_of_today = Date().dayOfWeek(){
            
            picked_date =  day_of_today.prefix(3) + ", " + today
        }else{
            picked_date =  today
        }
        custom_date_picker.datepicker.addTarget(self, action: #selector(datePickerValueChanged), for: UIControl.Event.valueChanged)
        custom_date_picker.done_btn.addTarget(self, action: #selector(doneactiondatepicker), for: .touchUpInside)
    }
    
    
    @objc func doneactiondatepicker(){
        
        custom_date_picker.removeFromSuperview()
        reloadpicker()
    }
    
    
    @objc func datePickerValueChanged(sender: UIDatePicker) {
        
        
        if let day_of_today = sender.date.dayOfWeek(){
            
            picked_date =  day_of_today.prefix(3) + ", " + dateformatter.string(from: sender.date)
        }else{
            picked_date =  dateformatter.string(from: sender.date)
        }
        
        
        
    }
    
    func today_date()->String{
        let date = Date()
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = date_format
        let today = dateformatter.string(from: date)
        return today
    }
    
    func getDayOfWeek(_ today:String) -> Int? {
        let formatter  = DateFormatter()
        formatter.dateFormat = date_format
        guard let todayDate = formatter.date(from: today) else { return nil }
        let myCalendar = Calendar(identifier: .gregorian)
        let weekDay = myCalendar.component(.weekday, from: todayDate)
        return weekDay
    }
    
    func img_rotateView(targetView: UIView?, duration: Double) {
        
        UIView.animate(withDuration: duration) {
            
            targetView?.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
        }
    }
    
    func stopAnimationForView(myView: UIView?) {
        UIView.animate(withDuration: 0.2) {
            myView?.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi * 0))
        }
        // myView?.layer.removeAnimation(forKey: "rotationAnimation")
        
    }
    
    func UI_estimateFrameForText(text: String) -> CGRect {
        let size = CGSize(width: 1000, height: 1000)
        let options = NSStringDrawingOptions.usesFontLeading.union(.usesLineFragmentOrigin)
        var font = UIFont()
        font = UIFont.boldSystemFont(ofSize: 15.0)
        switch UIDevice.current.userInterfaceIdiom {
        case .phone:
            
            break
        case .pad:
            
            font = UIFont.boldSystemFont(ofSize: 16.0)
            
        default: break
            
            
            
        }
        
        
        
        return NSString.init(string: text).boundingRect(with: size, options: options, attributes:[.font: font], context: nil)
    }
    
    
}
