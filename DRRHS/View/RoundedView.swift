//
//  RoundedView.swift
//  DRRHS
//
//  Created by Sam DuBois on 2/23/18.
//  Copyright © 2018 Joshua Holme. All rights reserved.
//

import UIKit

@IBDesignable

class RoundedView: UIView
{
    
    //    MARK: Interface Builder Attributes
    
    // Corner Radius
    @IBInspectable var cornerRadius: CGFloat = 20.0
        {
        didSet
        {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    // Border Width
    @IBInspectable var borderWidth: CGFloat = 2.0
        {
        didSet
        {
            self.layer.borderWidth = borderWidth
        }
    }
    
    // Border Color
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
            
        }
    }
    
    //    Prepare for build
    override func awakeFromNib()
    {
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder()
    {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    func setupView()
    {
        self.layer.cornerRadius = cornerRadius
        self.layer.borderWidth = borderWidth
        self.layer.masksToBounds = true
    }
}

