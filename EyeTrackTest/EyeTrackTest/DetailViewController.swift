//
//  DetailViewController.swift
//  EyeTrackTest
//
//  Created by edz on 2019/6/5.
//  Copyright © 2019 edz. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        userTableView.delegate = self
        userTableView.dataSource = self
        userTableView.ym_registerCell(cell: DetailTableViewCell.self)
        userTableView.rowHeight = (screenWidth - 60) / 0.6
        userTableView.separatorStyle = .none
        
        reCheckButton.layer.cornerRadius = 15
        reCheckButton.layer.borderColor = UIColor.green.cgColor
        reCheckButton.layer.borderWidth = 1
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var userTableView: UITableView!
    
    @IBAction func reCheck(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let newVC = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.present(newVC, animated: true)
    }
    
    @IBOutlet weak var reCheckButton: UIButton!
    
}
extension DetailViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.ym_dequeueReusableCell(indexPath: indexPath) as DetailTableViewCell
        cell.userInfo.text = "user 00\(indexPath.row + 1)"
        cell.img.image = UIImage(named: "\(indexPath.row + 1)")
        cell.userIcon.image = UIImage(named: "r\(indexPath.row + 1)")
        cell.selectionStyle = .none
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = BigImgViewController()
        vc.imgName = "\(indexPath.row + 1)"
        present(vc, animated: true)
    }
    
}
