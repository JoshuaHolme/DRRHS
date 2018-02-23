//
//  File.swift
//  DRRHS
//
//  Created by Sam DuBois on 2/22/18.
//  Copyright © 2018 Joshua Holme. All rights reserved.
//

import UIKit

// MARK: - Custom Colors
extension UIColor
{
    /// Green
    static let DRGreen = UIColor(red: 2.0/255.0, green: 128.0/255.0, blue: 57.0/255.0, alpha: 1.0)
    
    /// Gold
    static let DRGold = UIColor(red: 244.0/255.0, green: 197.0/255.0, blue: 3.0/255.0, alpha: 1.0)
}

// MARK: - Custom Button Annimations
extension UIButton
{
    /// Wiggle
    func wiggle()
    {
        let wiggleAnimation = CABasicAnimation(keyPath: "position")
        wiggleAnimation.duration = 0.05
        wiggleAnimation.repeatCount = 5
        wiggleAnimation.autoreverses = true
        wiggleAnimation.fromValue = CGPoint(x: self.center.x - 4.0, y: self.center.y)
        wiggleAnimation.toValue = CGPoint(x: self.center.x + 4.0, y: self.center.y)
        layer.add(wiggleAnimation, forKey: "position")
    }
}
