//
//  LandingView.swift
//  MilliSync
//
//  Created by Hang Zhao on 11/15/14.
//  Copyright (c) 2014 FindBoat. All rights reserved.
//

import UIKit

class LandingView : UIView {
    var channelTextField: UITextField!
    var infoButton:UIButton!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        self.channelTextField = UITextField()
        self.channelTextField.borderStyle = .RoundedRect
        self.channelTextField.placeholder = "Enter a channel"
        self.channelTextField.returnKeyType = .Go
        self.channelTextField.autocapitalizationType = .None
        self.channelTextField.clearButtonMode = .WhileEditing
        self.channelTextField.font = UIFont(name: "HelveticaNeue", size: 16.0)
        self.channelTextField.setTranslatesAutoresizingMaskIntoConstraints(false)
        // self.channelTextField.hidden = false
        self.addSubview(self.channelTextField)

        self.infoButton = UIButton.buttonWithType(.InfoDark) as UIButton
        self.infoButton.tintColor = UIColor.lightGrayColor()
        self.infoButton.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.addSubview(self.channelTextField)
        // self.infoButton.hidden = true
        self.addSubview(self.infoButton)
        
        self.backgroundColor = UIColor(rgba: "#FAFAFA")
        
        self.applyConstraints()

    }
    
    func applyConstraints() {
        // Constraints for channelTextField.
        self.addConstraint(NSLayoutConstraint(
            item: self.channelTextField,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: self,
            attribute: .CenterX,
            multiplier: 1,
            constant: 0))
        self.addConstraint(NSLayoutConstraint(
            item: self.channelTextField,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: self,
            attribute: .Top,
            multiplier: 1,
            constant: 200.0))
        self.addConstraint(NSLayoutConstraint(
            item: self.channelTextField,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: .NotAnAttribute,
            multiplier: 1,
            constant: 40.0))
        self.addConstraint(NSLayoutConstraint(
            item: self.channelTextField,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: nil,
            attribute: .NotAnAttribute,
            multiplier: 1,
            constant: 200.0))
        
        
        // Constraints for infoButton.
        self.addConstraint(NSLayoutConstraint(
            item: self.infoButton,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: self,
            attribute: .CenterX,
            multiplier: 1,
            constant: 0))
        self.addConstraint(NSLayoutConstraint(
            item: self.infoButton,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: self.channelTextField,
            attribute: .Bottom,
            multiplier: 1,
            constant: 70))

    }
    
    
}
