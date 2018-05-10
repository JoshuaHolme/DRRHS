//
//  CircleGraphView.swift
//  DRRHS
//
//  Created by Sam DuBois on 3/3/18.
//  Copyright © 2018 Joshua Holme. All rights reserved.
//

import UIKit

class CircleGraphView: UIView {

    //Variables
    var arcWidth: CGFloat = 15.0
    var arcColor = UIColor.DRGreen
    var arcBackgroundColor = UIColor.white
    var endArc: CGFloat = 0.0 { // in range from 0.0 to 1
        didSet {
            setNeedsDisplay()
        }
    }
    
    override func draw(_ rect: CGRect) {
        let fullCircle = 2.0 * CGFloat(Double.pi)
        let start: CGFloat = -0.25 * fullCircle
        let end: CGFloat = endArc * fullCircle + start
        
        // find the centerpoint of the rect
        let centerPoint = CGPoint(x: rect.width / 2, y: rect.height / 2)
        
        // Define the radius by the smallest side of the view
        var radius: CGFloat = 0.5
        if rect.width > rect.height {
            radius = (rect.width - arcWidth) / 2.0
        } else {
            radius = (rect.height - arcWidth) / 2.0
        }
        
        // Starting Code for Drawing a Circle
        let context = UIGraphicsGetCurrentContext()
        
        // Set Line Attributes
        context!.setLineWidth(arcWidth)
        context!.setLineCap(CGLineCap.round)
        
        // Make the Circle
        context?.setStrokeColor(arcBackgroundColor.cgColor)
        context?.addArc(center: centerPoint, radius: radius, startAngle: 0, endAngle: fullCircle, clockwise: false)
        context?.strokePath()
        
        context?.setStrokeColor(arcColor.cgColor)
        // context?.setLineWidth(arcWidth * 0.8)
        context?.addArc(center: centerPoint, radius: radius, startAngle: start, endAngle: end, clockwise: false)
        context?.strokePath()
    }

}
