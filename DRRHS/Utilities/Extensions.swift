//
//  File.swift
//  DRRHS
//
//  Created by Sam DuBois on 2/22/18.
//  Copyright © 2018 Joshua Holme. All rights reserved.
//

import UIKit

extension UIButton {
    
    func wiggle() {
        let wiggleAnimation = CABasicAnimation(keyPath: "position")
        wiggleAnimation.duration = 0.05
        wiggleAnimation.repeatCount = 5
        wiggleAnimation.autoreverses = true
        wiggleAnimation.fromValue = CGPoint(x: self.center.x - 4.0, y: self.center.y)
        wiggleAnimation.toValue = CGPoint(x: self.center.x + 4.0, y: self.center.y)
        layer.add(wiggleAnimation, forKey: "position")
    }
    
}
