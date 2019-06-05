//
//  BigImgViewController.swift
//  EyeTrackTest
//
//  Created by edz on 2019/6/5.
//  Copyright © 2019 edz. All rights reserved.
//

import UIKit

class BigImgViewController: UIViewController {
    var imgName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        backBtn.layer.cornerRadius = 15
        BigImg.image = UIImage(named: imgName)
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var BigImg: UIImageView!
    @IBOutlet weak var backBtn: UIButton!
    @IBAction func back(_ sender: Any) {
         self.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
