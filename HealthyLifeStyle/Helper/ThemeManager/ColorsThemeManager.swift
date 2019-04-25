//
//  ColorsThemeManager.swift
//  HealthyLifeStyle
//
//  Created by Anupkumar on 19/04/19.
//  Copyright © 2019 Anupkumar. All rights reserved.
//

import Foundation

import UIKit

struct Colors {
    
    // static let brightOrange     = UIColor(red: 255.0/255.0, green: 69.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    static let brightOrange     = ThemeColor.hexStringToUIColor(hex: "B42868")
    
    static let brightyellow              = ThemeColor.hexStringToUIColor(hex: "FF8C00")
    // static let red              = UIColor(red: 255.0/255.0, green: 115.0/255.0, blue: 115.0/255.0, alpha: 1.0)
    
    static let logo_blue = ThemeColor.hexStringToUIColor(hex: "3782C0")
    
    static let orange           = UIColor(red: 255.0/255.0, green: 175.0/255.0, blue: 72.0/255.0, alpha: 1.0)
    static let blue             = UIColor(red: 74.0/255.0, green: 144.0/255.0, blue: 228.0/255.0, alpha: 1.0)
    
    static let darkgreen  = ThemeColor.hexStringToUIColor(hex: "20B2AA")
    
    static let darkblue  = ThemeColor.hexStringToUIColor(hex: "0080FF")
    
    static let green            = UIColor(red: 91.0/255.0, green: 197.0/255.0, blue: 159.0/255.0, alpha: 1.0)
    
    //theme 3
    static let darkGrey         = UIColor(red: 85.0/255.0, green: 85.0/255.0, blue: 85.0/255.0, alpha: 1.0)
    static let veryDarkGrey     = UIColor(red: 13.0/255.0, green: 13.0/255.0, blue: 13.0/255.0, alpha: 1.0)
    
    //theme 3
    static let lightGrey        = UIColor(red: 200.0/255.0, green: 200.0/255.0, blue: 200.0/255.0, alpha: 1.0)
    static let black            = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    static let white            = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
    
    //theme 1 tabbar
    
    static let flareRed = UIColor(displayP3Red: 241.0/255.0, green: 39.0/255.0, blue: 17.0/255.0, alpha: 1.0)
    static let flareOrange = UIColor(displayP3Red: 245.0/255.0, green: 175.0/255.0, blue: 25.0/255.0, alpha: 1.0)
    
    
    static let tabdarkgreen  = ThemeColor.hexStringToUIColor(hex: "32CD32")
    
    static let tabdarkblue  = ThemeColor.hexStringToUIColor(hex: "199DBE")
    
    static let tabnewlightgreen = ThemeColor.hexStringToUIColor(hex: "bbd2c5")
    
   // static let tabnewdarkgrey = ThemeColor.hexStringToUIColor(hex: "006400")
    
    static let tabnewdarkgrey = ThemeColor.hexStringToUIColor(hex: "248C85")
    
    static let lightblue = ThemeColor.hexStringToUIColor(hex:"4682B4")
    
}

class ThemeColor:UIColor{
    static func hexStringToUIColor (hex:String)->UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
extension UIColor {
    
    static func rgb(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: 1.0)
    }
    
    static let kBackground = UIColor.rgb(r: 21, g: 22, b: 33)
    static let kOutlineStroke = UIColor.rgb(r: 234, g: 46, b: 111)
    static let kTrackStroke = UIColor.rgb(r: 56, g: 25, b: 49)
    static let kPulsingFill = UIColor.rgb(r: 86, g: 30, b: 63)
}

