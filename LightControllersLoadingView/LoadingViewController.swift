//
//  LoadingViewController.swift
//  LightControllersLoadingView
//
//  Created by Alex S on 10/2/16.
//  Copyright © 2016 swifttest. All rights reserved.
//

import UIKit

class LoadingViewController: UIViewController {
    
    
    // We are Using an activity indicator here that could be replaced by a custom view(ex: activity indicator and a blurred background)
    var activityIndicator : UIActivityIndicatorView?
    
    override func loadView() {
        // view initialization
        activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.WhiteLarge);
        activityIndicator?.backgroundColor = UIColor.grayColor();
        activityIndicator!.hidesWhenStopped = true;
        
        // setting activity indicator as controller's one
        self.view = self.loadingView();
    }
    
    func loadingView() -> UIActivityIndicatorView {
        return self.activityIndicator!;
    }
    
    func show() {
        // not required due to activity indicator feature to auto hide when stopped
        // self.view.alpha = 1.0;
        self.activityIndicator?.startAnimating();
    }
    
    func hide() {
        // not required due to activity indicator feature to auto hide when stopped        
        // self.view.alpha = 0.0;
        self.activityIndicator?.stopAnimating();
    }
}