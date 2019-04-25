//
//  ThemeManager.swift
//  HealthyLifeStyle
//
//  Created by Anupkumar on 19/04/19.
//  Copyright © 2019 Anupkumar. All rights reserved.
//

import Foundation
import UIKit

// Enum declaration
let SelectedThemeKey = "SelectedTheme"
// ThemeManager
class ThemeManager {
    
static func currentTheme() -> Theme  {
    let storedTheme = (UserDefaults.standard.value(forKey: SelectedThemeKey) as AnyObject).integerValue
    
    if storedTheme == 0 {
        return .theme1
    } else if storedTheme == 1 {
        return .theme2
    }else {
        return .theme3
    }
}

static func SecondforGradientcurrentTheme() ->  SecondforGradientTheme {
    let storedTheme = (UserDefaults.standard.value(forKey: SelectedThemeKey) as AnyObject).integerValue
    
    if storedTheme == 0 {
        return .theme1
    } else if storedTheme == 1 {
        return .theme2
    }else {
        return .theme3
    }
}
    
    static func applyTheme(theme: Theme,theme2:SecondforGradientTheme) {
        // First persist the selected theme using NSUserDefaults.
        UserDefaults.standard.setValue(theme.rawValue, forKey: SelectedThemeKey)
        UserDefaults.standard.synchronize()
        
        UINavigationBar.appearance().barStyle = theme.barStyle
       
        UINavigationBar.appearance().backIndicatorImage = UIImage(named: "backArrow")
        UINavigationBar.appearance().backIndicatorTransitionMaskImage = UIImage(named: "backArrowMaskFixed")
        
        
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        
        
        UITabBar.appearance().barStyle = theme.barStyle
        //  UITabBar.appearance().backgroundImage = theme.tabBarBackgroundImage
        // UITabBar.appearance().barTintColor = theme.tab_backgroundColor
        
        UITabBar.appearance().tintColor = theme.selectedtabColor
        
        UITabBar.appearance().unselectedItemTintColor = theme.unselectedtabColor
        
        // let tabIndicator = UIImage(named: "tabBarSelectionIndicator")?.withRenderingMode(.alwaysTemplate)
        
        //  let tabResizableIndicator = tabIndicator?.resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: 2.0, bottom: 0, right: 2.0))
        
        
        //  UITabBar.appearance().selectionIndicatorImage = tabResizableIndicator
        
        //        let selectedColor   = theme.selectedtabColor
        //        let unselectedColor = theme.unselectedtabColor
        //
        //        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: unselectedColor], for: .normal)
        //        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: selectedColor], for: .selected)
        //
        
        
        
        let controlBackground = UIImage(named: "controlBackground")?.withRenderingMode(.alwaysTemplate)
            .resizableImage(withCapInsets: UIEdgeInsets(top: 3, left: 3, bottom: 3, right: 3))
        let controlSelectedBackground = UIImage(named: "controlSelectedBackground")?
            .withRenderingMode(.alwaysTemplate)
            .resizableImage(withCapInsets: UIEdgeInsets(top: 3, left: 3, bottom: 3, right: 3))
        
        UISegmentedControl.appearance().setBackgroundImage(controlBackground, for: .normal, barMetrics: .default)
        UISegmentedControl.appearance().setBackgroundImage(controlSelectedBackground, for: .selected, barMetrics: .default)
        
        UIStepper.appearance().setBackgroundImage(controlBackground, for: .normal)
        UIStepper.appearance().setBackgroundImage(controlBackground, for: .disabled)
        UIStepper.appearance().setBackgroundImage(controlBackground, for: .highlighted)
        UIStepper.appearance().setDecrementImage(UIImage(named: "fewerPaws"), for: .normal)
        UIStepper.appearance().setIncrementImage(UIImage(named: "morePaws"), for: .normal)
        
        UISlider.appearance().setThumbImage(UIImage(named: "sliderThumb"), for: .normal)
        UISlider.appearance().setMaximumTrackImage(UIImage(named: "maximumTrack")?
            .resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: 0.0, bottom: 0, right: 6.0)), for: .normal)
        UISlider.appearance().setMinimumTrackImage(UIImage(named: "minimumTrack")?
            .withRenderingMode(.alwaysTemplate)
            .resizableImage(withCapInsets: UIEdgeInsets(top: 0, left: 6.0, bottom: 0, right: 0)), for: .normal)
        
        UISwitch.appearance().onTintColor = theme.mainColor.withAlphaComponent(0.3)
        UISwitch.appearance().thumbTintColor = theme.mainColor
    }
}
