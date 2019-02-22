//
//  ViewController1.swift
//  PlayWithContainerView
//
//  Created by Do Hoang Viet on 2/22/19.
//  Copyright © 2019 Do Hoang Viet. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /// Instance view controller 1
    ///
    /// - Returns: a view controller
    static func newInstance() -> ViewController1 {
        return (Supports.instantiateViewController("Main", with: "ViewController1") as? ViewController1) ?? ViewController1()
    }

}
