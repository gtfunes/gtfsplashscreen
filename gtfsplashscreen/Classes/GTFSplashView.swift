//
//  GTFSplashView.swift
//  gtfsplashscreen
//
//  Created by Gaston Funes on 13/03/2019.
//  Copyright © 2019 Gaston Funes. All rights reserved.
//

import UIKit

class GTFSplashView: UIViewController {
    var backgroundImage: UIImageView!
    var loadingIndicator: UIActivityIndicatorView!
    
    func splashDeviceImageFileForOrientation(screenOrientation: UIInterfaceOrientation) -> UIImage {
        let imageName = NSMutableString(string: "LaunchImage")
        let height = UIScreen.main.bounds.height
        let landscape = UIApplication.shared.statusBarOrientation.isLandscape
        
        if (UIDevice.current.userInterfaceIdiom == .pad) {
            if (landscape) {
                imageName.append("-700-Landscape")
            } else {
                imageName.append("-700-Portrait")
            }
            
            imageName.append("~ipad")
        } else if (height == 568) {
            imageName.append("-700-568h")
        } else if (height == 667) {
            imageName.append("-800-667h")
        } else if (height == 736 || height == 414) {
            if (landscape) {
                imageName.append("-800-Landscape-736h")
            } else {
                imageName.append("-800-Portrait-736h")
            }
        } else if (height == 812) {
            if (landscape) {
                imageName.append("-1100-Landscape-2436h")
            } else {
                imageName.append("-1100-Portrait-2436h")
            }
        } else {
            imageName.append("-700")
        }
        
        return UIImage.init(named: String(imageName))!
    }
    func setCorrectImageAndPositions() {
        self.backgroundImage.frame = self.view.bounds
        self.backgroundImage.image = self.splashDeviceImageFileForOrientation(screenOrientation: UIApplication.shared.statusBarOrientation)
        
        self.loadingIndicator.frame = CGRect.init(origin: CGPoint.init(x: self.view.frame.width / 2 - self.loadingIndicator.frame.width / 2, y: self.view.frame.height - (self.loadingIndicator.frame.height * 4)), size: CGSize.init(width: self.loadingIndicator.frame.width, height: self.loadingIndicator.frame.height))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.backgroundImage = UIImageView.init()
        self.backgroundImage.contentMode = .scaleAspectFill
        self.view.addSubview(self.backgroundImage)
        
        self.loadingIndicator = UIActivityIndicatorView.init(activityIndicatorStyle: .white)
        self.loadingIndicator.startAnimating()
        self.view.addSubview(self.loadingIndicator)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.setCorrectImageAndPositions()
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        coordinator.animate(alongsideTransition: { [unowned self] _ in
            self.setCorrectImageAndPositions()
        }) { _ in }
    }
}
