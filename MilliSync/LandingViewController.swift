//
//  LandingViewController.swift
//  MilliSync
//
//  Created by Hang Zhao on 11/15/14.
//  Copyright (c) 2014 FindBoat. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {
    var landingView: LandingView!
    
    override func loadView() {
        super.loadView()
        
        self.navigationItem.title = "MilliSync"
        
        self.landingView = LandingView(frame: CGRect.zeroRect)
        self.view = self.landingView
    }
}
