//
//  EyeTrackViewController.swift
//  EyeTrackTest
//
//  Created by edz on 2019/6/5.
//  Copyright © 2019 edz. All rights reserved.
//

import UIKit

class EyeTrackViewController: UIViewController {
    var moveFlag = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        trackButton.layer.cornerRadius = 40
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var trackButton: UIButton!
    
    @IBAction func touchTrack(_ sender: Any) {
        UIView.animate(withDuration: 0.4){
            switch self.moveFlag{
            case 1:
                self.trackButton.center.x = 40
            case 2:
                self.trackButton.center.x =  screenWidth - 40
            case 3:
                self.trackButton.center.y = 80
                self.trackButton.center.x = screenWidth / 2
            case 4:
                self.trackButton.center.y =  screenHeight - 40
                self.trackButton.center.x = screenWidth / 2
            case 5:
                self.trackButton.center.y =  screenHeight / 2
                self.trackButton.center.x = screenWidth / 2
                self.trackButton.setTitle("完成", for: .normal)
                self.trackButton.titleLabel?.font = UIFont.systemFont(ofSize: 13)
            default:
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let newVC = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
                self.present(newVC, animated: true)
            }
            self.moveFlag += 1
        }
    }
    
}
