//
//  EnumOfThemeManager.swift
//  HealthyLifeStyle
//
//  Created by Anupkumar on 19/04/19.
//  Copyright © 2019 Anupkumar. All rights reserved.
//

import Foundation
import UIKit

enum Theme: Int {
    
    case theme1, theme2 , theme3
    
    var mainColor: UIColor {
        switch self {
        case .theme1:
            return Colors.brightOrange
        case .theme2:
            return Colors.green
            
        case .theme3:
            return Colors.darkGrey
            
            
        }
    }
    
    //Customizing the Navigation Bar
    var barStyle: UIBarStyle {
        switch self {
        case .theme1:
            return .default
        case .theme2:
            return .black
        case .theme3:
            return .default
        }
    }
    
    var navigationBackgroundImage: UIImage? {
        return self == .theme1 ? UIImage(named: "navBackground") : nil
    }
    
    var tabBarBackgroundImage: UIImage? {
        return self == .theme1 ? UIImage(named: "tabBarBackground") : nil
    }
    
    var backgroundColor: UIColor {
        switch self {
        case .theme1:
            return Colors.tabdarkgreen
        case .theme2:
            return Colors.green
        case .theme3:
            return Colors.tabnewlightgreen
        }
    }
    
    var secondaryColor: UIColor {
        switch self {
        case .theme1:
            return Colors.flareOrange
        case .theme2:
            return Colors.logo_blue
        case .theme3:
            return Colors.logo_blue
        }
    }
    var lineviewColor: UIColor {
        switch self {
        case .theme1:
            return UIColor.white
        case .theme2:
            return UIColor.white
        case .theme3:
            return UIColor.white
        }
    }
    var titleTextColor: UIColor {
        switch self {
        case .theme1:
            return UIColor.white
        case .theme2:
            return UIColor.white
        case .theme3:
            return UIColor.white
        }
    }
    var subtitleTextColor: UIColor {
        switch self {
        case .theme1:
            return Colors.brightOrange
        case .theme2:
            return Colors.green
        case .theme3:
            return Colors.darkGrey
        }
    }
    
    var tab_backgroundColor: UIColor {
        switch self {
        case .theme1:
            return Colors.flareOrange
        case .theme2:
            return Colors.tabdarkgreen
        case .theme3:
            return Colors.tabnewlightgreen
        }
    }
    
    var navi_backgroundColor: UIColor {
        switch self {
        case .theme1:
            return Colors.tabnewdarkgrey
        case .theme2:
            return Colors.darkgreen
        case .theme3:
            return Colors.tabnewdarkgrey
        }
    }
    
    var selectedtabColor: UIColor {
        switch self {
        case .theme1:
            return UIColor.white
        case .theme2:
            return UIColor.white
        case .theme3:
            return UIColor.white
        }
    }
    
    var unselectedtabColor: UIColor {
        switch self {
        case .theme1:
            return UIColor.black
        case .theme2:
            return UIColor.black
        case .theme3:
            return UIColor.black
        }
    }
    var messageviewColor: UIColor {
        switch self {
        case .theme1:
            return Colors.flareOrange
        case .theme2:
            return Colors.darkgreen
        case .theme3:
            return Colors.tabdarkblue
        }
    }
    
    var black_title_labelColor: UIColor {
        switch self {
        case .theme1:
            return UIColor.black
        case .theme2:
            return UIColor.black
        case .theme3:
            return UIColor.black
        }
    }
    
}

//Second

enum SecondforGradientTheme: Int {
    
    case theme1, theme2 , theme3
    
    var mainColor: UIColor {
        switch self {
        case .theme1:
            return Colors.brightyellow
        case .theme2:
            return Colors.blue
        case .theme3:
            return Colors.lightGrey
        }
    }
    
    //Customizing the Navigation Bar
    var barStyle: UIBarStyle {
        switch self {
        case .theme1:
            return .default
        case .theme2:
            return .black
        case .theme3:
            return .blackTranslucent
            
        }
    }
    
    var navigationBackgroundImage: UIImage? {
        return self == .theme1 ? UIImage(named: "navBackground") : nil
    }
    
    var tabBarBackgroundImage: UIImage? {
        return self == .theme1 ? UIImage(named: "tabBarBackground") : nil
    }
    /*
     var backgroundColor: UIColor {
     switch self {
     case .theme1:
     return UIColor().colorFromHexString(Colors.brightOrange)
     case .theme2:
     return UIColor().colorFromHexString("000000")
     }
     }
     */
    var backgroundColor: UIColor {
        switch self {
        case .theme1:
            return Colors.brightyellow
            //return Colors.brightyellow
        case .theme2:
            return Colors.blue
            
        case .theme3:
            return Colors.tabnewdarkgrey
            
        }
    }
    
    var secondaryColor: UIColor {
        switch self {
        case .theme1:
            return Colors.brightyellow
        case .theme2:
            return Colors.blue
        case .theme3:
            return Colors.lightGrey
        }
    }
    
    var titleTextColor: UIColor {
        switch self {
        case .theme1:
            return Colors.brightyellow
        case .theme2:
            return Colors.blue
        case .theme3:
            return Colors.lightGrey
        }
    }
    var subtitleTextColor: UIColor {
        switch self {
        case .theme1:
            return Colors.brightyellow
        case .theme2:
            return Colors.blue
        case .theme3:
            return Colors.lightGrey
        }
    }
    
    var tab_backgroundColor: UIColor {
        switch self {
        case .theme1:
            return Colors.flareRed
        case .theme2:
            return Colors.tabdarkblue
        case .theme3:
            return Colors.tabnewdarkgrey
        }
    }
    
    var navi_backgroundColor: UIColor {
        switch self {
        case .theme1:
            return Colors.tabnewlightgreen
        case .theme2:
            return Colors.blue
        case .theme3:
            return Colors.tabnewlightgreen
        }
    }
    
    var selectedtabColor: UIColor {
        switch self {
        case .theme1:
            return UIColor.white
        case .theme2:
            return UIColor.white
        case .theme3:
            return UIColor.white
        }
    }
    
    var unselectedtabColor: UIColor {
        switch self {
        case .theme1:
            return UIColor.black
        case .theme2:
            return UIColor.black
        case .theme3:
            return UIColor.black
        }
    }
    
}

