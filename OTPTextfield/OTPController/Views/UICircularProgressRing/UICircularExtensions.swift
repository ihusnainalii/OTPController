//
//  Extensions.swift
//  UICircularProgressRing
//
//  Created by Luis on 2/5/19.
//  Copyright © 2019 Luis Padron. All rights reserved.
//

/**
 * This file includes internal extensions.
 */

import UIKit

/// Helper extension to allow removing layer animation based on AnimationKeys enum
extension CALayer {
    func removeAnimation(forKey key: UICircularRing.AnimationKeys) {
        removeAnimation(forKey: key.rawValue)
    }

    func animation(forKey key: UICircularRing.AnimationKeys) -> CAAnimation? {
        return animation(forKey: key.rawValue)
    }

    func value(forKey key: UICircularRing.AnimationKeys) -> Any? {
        return value(forKey: key.rawValue)
    }
}

/**
 A private extension to CGFloat in order to provide simple
 conversion from degrees to radians, used when drawing the rings.
 */
extension CGFloat {
    var rads: CGFloat { return self * CGFloat.pi / 180 }
    
}

/// adds simple conversion to CGFloat
extension TimeInterval {
    var float: CGFloat { return CGFloat(self) }
}

/// adds simple conversion to TimeInterval
extension CGFloat {
    var interval: TimeInterval { return TimeInterval(self) }
}


extension Float {
    var durationText:String {
        let totalSeconds = self
        let hours:Int = Int(totalSeconds.truncatingRemainder(dividingBy: 86400) / 3600)
        let minutes:Int = Int(totalSeconds.truncatingRemainder(dividingBy: 3600) / 60)
        let seconds:Int = Int(totalSeconds.truncatingRemainder(dividingBy: 60))
        
        if hours > 0 {
            return String(format: "%i:%02i:%02i", hours, minutes, seconds)
        } else {
            return String(format: "%02i:%02i", minutes, seconds)
        }
        
    }
    
    
    var durationTextInHourMinSec:String {
        let totalSeconds = self
        let hours:Int = Int(totalSeconds.truncatingRemainder(dividingBy: 86400) / 3600)
        let minutes:Int = Int(totalSeconds.truncatingRemainder(dividingBy: 3600) / 60)
        let seconds:Int = Int(totalSeconds.truncatingRemainder(dividingBy: 60))
        
//        if hours > 0 {
            return String(format: "%02i:%02i:%02i", hours, minutes, seconds)
//        } else {
//            return String(format: "%02i:%02i", minutes, seconds)
//        }
        
    }

}
