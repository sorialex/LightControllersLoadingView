//
//  LoadingView.swift
//  LightControllersLoadingView
//
//  Created by Alex S on 10/2/16.
//  Copyright © 2016 swifttest. All rights reserved.
//

import UIKit

protocol LoadingView {
}

extension LoadingView where Self: UIViewController {
    
    func createAndAddLoader() -> LoadingViewController {
        let loading = LoadingViewController();
        
        // controller and view new hierarchy configuration
        self.addChildViewController(loading);
        loading.didMoveToParentViewController(self);
        self.view.addSubview(loading.view);
        loading.view.center = self.view.center;
        
        return loading;
    }
    
    func loader() -> LoadingViewController {
        for viewController: UIViewController in self.childViewControllers {
            if viewController.isKindOfClass(LoadingViewController) {
                return viewController as! LoadingViewController;
            }
        }
        return self.createAndAddLoader();
    }
}
