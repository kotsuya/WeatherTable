//
//  ViewController.swift
//  WeatherTable
//
//  Created by Yoo SeungHwan on 2016/09/28.
//  Copyright © 2016年 Yoo SeungHwan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    var datalist:[[String:String]] = [[:]]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datalist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath)
        
        let dicTemp = datalist[indexPath.row]
        cell.textLabel?.text = dicTemp["Area"]
        
        let weatherStr = dicTemp["weather"]
        cell.detailTextLabel?.text = weatherStr
        
        if weatherStr == "Sunny" {
            cell.imageView?.image = UIImage(named: "sunny.png")
        } else if weatherStr == "Snow" {
            cell.imageView?.image = UIImage(named: "snow.png")
        } else if weatherStr == "Rainy" {
            cell.imageView?.image = UIImage(named: "rainy.png")
        } else if weatherStr == "Cloudy" {
            cell.imageView?.image = UIImage(named: "cloudy.png")
        } else {
            cell.imageView?.image = UIImage(named: "blizzard.png")
        }
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dict1 = ["Area":"Korea","weather":"Rainy"]
        let dict2 = ["Area":"Japan","weather":"Sunny"]
        let dict3 = ["Area":"China","weather":"Snow"]
        let dict4 = ["Area":"Spain","weather":"Blizzard"]
        let dict5 = ["Area":"USA","weather":"Cloudy"]
        let dict6 = ["Area":"UK","weather":"Rainy"]
        let dict7 = ["Area":"France","weather":"Cloudy"]
        let dict8 = ["Area":"Brazil","weather":"Blizzard"]
        let dict9 = ["Area":"Switzerland","weather":"Sunny"]
        let dict10 = ["Area":"Denmark","weather":"Rainy"]
        let dict11 = ["Area":"Sweden","weather":"Snow"]
        let dict12 = ["Area":"Netherlands","weather":"Rainy"]
        let dict13 = ["Area":"Croatia","weather":"Sunny"]
        let dict14 = ["Area":"Philippines","weather":"Sunny"]
        let dict15 = ["Area":"Germany","weather":"Snow"]
        let dict16 = ["Area":"Hungary","weather":"Rainy"]
        let dict17 = ["Area":"Belgium","weather":"Cloudy"]
        let dict18 = ["Area":"Finland","weather":"Blizzard"]
        let dict19 = ["Area":"Italy","weather":"Sunny"]
        
        datalist = [dict1,dict2,dict3,dict4,dict5,dict6,dict7,dict8,dict9,dict10,dict11,dict12,dict13,dict14,dict15,dict16,dict17,dict18,dict19]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

