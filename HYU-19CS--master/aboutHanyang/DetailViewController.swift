//
//  DetailViewController.swift
//  aboutHanyang
//
//  Created by 안재은 on 20/04/2019.
//  Copyright © 2019 TaeHyeong97HYU. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var buildingInfo: UILabel!
    @IBOutlet weak var buildingImage: UILabel!
    
    var name:String?
    var image:String?
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func viewDidLoad() {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        buildingInfo.text? = name!
        buildingImage.text = image!
    }

}
