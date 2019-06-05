//
//  ViewController.swift
//  EyeTrackTest
//
//  Created by edz on 2019/6/5.
//  Copyright © 2019 edz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        backView.layer.cornerRadius = 15
        segueButton.layer.cornerRadius = 15
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var segueButton: UIButton!
    
}

