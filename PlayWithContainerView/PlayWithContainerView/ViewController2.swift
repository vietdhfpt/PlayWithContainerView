//
//  ViewController2.swift
//  PlayWithContainerView
//
//  Created by Do Hoang Viet on 2/22/19.
//  Copyright © 2019 Do Hoang Viet. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /// Instance view controller 2
    ///
    /// - Returns: a view controller
    static func newInstance() -> ViewController2 {
        return (Supports.instantiateViewController("Main", with: "ViewController2") as? ViewController2) ?? ViewController2()
    }

}
