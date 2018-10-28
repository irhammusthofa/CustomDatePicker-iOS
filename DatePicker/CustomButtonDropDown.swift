//
//  CustomButtonDropDown.swift
//
//  Created by Irham Mustofa Kamil on 07/03/18.
//  Copyright © 2018 Kamil IT Consultant. All rights reserved.
//
import UIKit
class CustomButtonDropDown: UIButton {
    
    override func awakeFromNib() {
        let color = UIColor(red:0.94, green:0.94, blue:0.96, alpha:1.0)
        self.layer.cornerRadius = 4.0
        self.clipsToBounds = true
        self.layer.borderWidth = 1
        self.layer.borderColor = color.cgColor
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if imageView != nil {
            imageEdgeInsets = UIEdgeInsets(top: 5, left: (bounds.width - 25), bottom: 5, right: 2)
            titleEdgeInsets = UIEdgeInsets(top: 0, left: -2, bottom: 0, right: (imageView?.frame.width)!)
        }
    }
}
