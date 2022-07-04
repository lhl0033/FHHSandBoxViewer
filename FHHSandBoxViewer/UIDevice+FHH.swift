//
//  UIDevice+Extention.swift
//  USchool
//
//  Created by hefanghui on 2017/9/15.
//  Copyright © 2017 topglobaledu. All rights reserved.
//
//
//  ************************************************************************
import UIKit

@objc extension UIDevice {
    
    public class func fhh_kScreenW() -> CGFloat {
        return UIScreen.main.bounds.size.width
    }
    
    public class func fhh_kScreenH() -> CGFloat {
        return UIScreen.main.bounds.size.height
    }
    
    public class func fhh_kNavigationBarHeight() -> CGFloat {
        if self.fhh_isiPhoneX() {
            return 101.0
        } else {
            return 64.0
        }
    }
    
    /// Returns `true` if the device has a notch
    var hasNotch: Bool {
        guard let window = UIApplication.shared.windows.filter({$0.isKeyWindow}).first else { return false }
        return window.safeAreaInsets.top >= 44
    }
    
    public class func fhh_isiPhoneX() -> Bool {
        UIDevice.current.hasNotch
    }
    
    public class func fhh_isiPhone6PlusBigMode() -> Bool {
        if (UIScreen.main.currentMode?.size.equalTo(CGSize.init(width: 1125, height: 2001)))! {
            return true
        }
        return false
    }
    
    public class func fhh_isiPhone6Plus() -> Bool {
        if (UIScreen.main.currentMode?.size.equalTo(CGSize.init(width:1242, height: 2208)))! {
            return true
        }
        return false
    }
    
    public class func fhh_isiPhone6() -> Bool {
        if (UIScreen.main.currentMode?.size.equalTo(CGSize.init(width:750, height: 1334)))! {
            return true
        }
        return false
    }
    
    public class func fhh_isiPhone5() -> Bool {
        if (UIScreen.main.currentMode?.size.equalTo(CGSize.init(width: 640, height: 1136)))! {
            return true
        }
        return false
    }
    
    public class func fhh_isiOS11() -> Bool {
        if #available(iOS 11.0, *) {
            return true
        } else {
            return false
        }
    }
    
    public class func fhh_isiOS10() -> Bool {
        if #available(iOS 10.0, *) {
            return true
        } else {
            return false
        }
    }
    
    public class func fhh_isiOS9() -> Bool {
        if #available(iOS 9.0, *) {
            return true
        } else {
            return false
        }
    }
    
    public class func fhh_isiOS8() -> Bool {
        if #available(iOS 8.0, *) {
            return true
        } else {
            return false
        }
    }
    
    public class func fhh_isAiPad() -> Bool {
        if UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad {
            return true
        }
        return false
    }
    
}
