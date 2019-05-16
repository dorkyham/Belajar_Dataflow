//
//  HomeViewController.swift
//  Belajar_Dataflow
//
//  Created by Annisa Nabila Nasution on 16/05/19.
//  Copyright © 2019 Annisa Nabila Nasution. All rights reserved.
//

import UIKit

class HomeViewController : UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var name: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
    }
}
