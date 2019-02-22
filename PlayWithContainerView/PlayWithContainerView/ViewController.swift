//
//  ViewController.swift
//  PlayWithContainerView
//
//  Created by Do Hoang Viet on 2/22/19.
//  Copyright © 2019 Do Hoang Viet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view1Button: UIButton!
    @IBOutlet weak var view2Button: UIButton!
    @IBOutlet weak var containerView: UIView!
    
    let viewController1 = ViewController1.newInstance()
    let viewController2 = ViewController2.newInstance()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDefault()
    }
    
    private func setupDefault() {
        resizeFrameOfView(with: viewController1.view)
        containerView.addSubview(viewController1.view)
    }
    
    private func resizeFrameOfView(with view: UIView) {
        view.frame = containerView.bounds
    }

    @IBAction func switchButtonPressed(_ sender: UIButton) {
        switch sender {
        case view1Button:
            resizeFrameOfView(with: viewController1.view)
            containerView.addSubview(viewController1.view)
        case view2Button:
            resizeFrameOfView(with: viewController2.view)
            containerView.addSubview(viewController2.view)
        default:
            break
        }
    }
    
}

class Supports: NSObject {
    
    /// Instantiate view controller with storyboard and identifier
    ///
    /// - Parameters:
    ///   - storyboardName: Name of storyboard
    ///   - identifier: Name of identifier
    /// - Returns: A UIViewController
    class func instantiateViewController(_ storyboardName: String, with identifier: String = "") -> UIViewController {
        return UIStoryboard(name: storyboardName, bundle: nil).instantiateViewController(withIdentifier: identifier.isEmpty ? storyboardName : identifier)
    }
}
