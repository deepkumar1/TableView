//
//  ViewController.swift
//  tableView
//
//  Created by DEEP KUMAR on 18/06/19.
//  Copyright © 2019 DEEP KUMAR. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
    
    
   
    
    var imgarray=[#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "7"),#imageLiteral(resourceName: "1"),#imageLiteral(resourceName: "10"),#imageLiteral(resourceName: "8"),#imageLiteral(resourceName: "9"),#imageLiteral(resourceName: "3"),#imageLiteral(resourceName: "4"),#imageLiteral(resourceName: "6"),#imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "7"),#imageLiteral(resourceName: "1"),#imageLiteral(resourceName: "10"),#imageLiteral(resourceName: "8"),#imageLiteral(resourceName: "9"),#imageLiteral(resourceName: "3"),#imageLiteral(resourceName: "4"),#imageLiteral(resourceName: "6"),#imageLiteral(resourceName: "5")]
    var lblarr=["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgarray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:MYcell=tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath) as! MYcell
        cell.img.image=imgarray[indexPath.row]
        cell.lbl.text=lblarr[indexPath.row]
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail:Secondscreen=self.storyboard?.instantiateViewController(withIdentifier: "Secondscreen") as! Secondscreen
            detail.main=imgarray[indexPath.row]
        detail.info=lblarr[indexPath.row]
        self.navigationController?.pushViewController(detail , animated: true)
        
    }

}

