//
//  UIDevice+Convenience.swift
//
//  Created by Marc Stroebel on 2015/01/15.

extension UIDevice {
    
    class func SYSTEM_VERSION_EQUAL_TO(version: NSString) -> Bool {
        return self.currentDevice().systemVersion.compare(version as String,
            options: NSStringCompareOptions.NumericSearch) == NSComparisonResult.OrderedSame
    }
    
    class func SYSTEM_VERSION_GREATER_THAN(version: NSString) -> Bool {
        return self.currentDevice().systemVersion.compare(version as String,
            options: NSStringCompareOptions.NumericSearch) == NSComparisonResult.OrderedDescending
    }
    
    class func SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(version: NSString) -> Bool {
        return self.currentDevice().systemVersion.compare(version as String,
            options: NSStringCompareOptions.NumericSearch) != NSComparisonResult.OrderedAscending
    }
    
    class func SYSTEM_VERSION_LESS_THAN(version: NSString) -> Bool {
        return self.currentDevice().systemVersion.compare(version as String,
            options: NSStringCompareOptions.NumericSearch) == NSComparisonResult.OrderedAscending
    }
    
    class func SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(version: NSString) -> Bool {
        return self.currentDevice().systemVersion.compare(version as String,
            options: NSStringCompareOptions.NumericSearch) != NSComparisonResult.OrderedDescending
    }
    
    class func isIPad() -> Bool {
        return UIDevice.currentDevice().userInterfaceIdiom == .Pad
    }
    
    class func isIPhone4() -> Bool {
        if #available(iOS 8.0, *) {
            return UIScreen.mainScreen().nativeBounds.size.height < 1136
        } else {
            return UIScreen.mainScreen().bounds.size.height < 568
        }
    }
    
    class func isIPhone5() -> Bool {
        if #available(iOS 8.0, *) {
            return UIScreen.mainScreen().nativeBounds.size.height == 1136
        } else {
            return UIScreen.mainScreen().bounds.size.height == 568
        }
    }
    
    class func isIPhone6() -> Bool {
        if #available(iOS 8.0, *) {
            return UIScreen.mainScreen().nativeBounds.size.height == 1334
        } else {
            return UIScreen.mainScreen().bounds.size.height == 667
        }
    }
    
    class func isIPhone6Plus() -> Bool {
        if #available(iOS 8.0, *) {
            return UIScreen.mainScreen().nativeBounds.size.height == 1472
        } else {
            return UIScreen.mainScreen().bounds.size.height == 736
        }
    }
}
