//
//  Secondscreen.swift
//  tableView
//
//  Created by DEEP KUMAR on 18/06/19.
//  Copyright © 2019 DEEP KUMAR. All rights reserved.
//

import UIKit

class Secondscreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Detail.image=main
       lbls.text=info
        lbls.backgroundColor = .yellow
        
   
    }



    @IBOutlet weak var Detail: UIImageView!
    var main=UIImage.init()
    
    @IBOutlet weak var lbls: UILabel!
    var  info:String=""
}
