//
//  ViewController.swift
//  LightControllersLoadingView
//
//  Created by Alex S on 10/2/16.
//  Copyright © 2016 swifttest. All rights reserved.
//

import UIKit

class ViewController: UIViewController, LoadingView {
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated);

        self.loader().show();
        
        // self.loader().hide();
    }
}