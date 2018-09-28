//
//  ViewController.swift
//  RMS
//
//  Created by Conan Chuang on 2018/9/20.
//  Copyright © 2018年 Mickey Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource{
    
    // test
    let images = ["dog1", "dog2", "dog3", "dog4", "dog5", "dog6", "dog7", "dog8", "dog9", "dog10", "dog11", "dog12"]
    
    // menu item title
    let items = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]
    
    // menu item price
    let prices = ["$90", "$80", "$100", "$70", "$120", "$40", "$60", "$50", "$70", "$35", "$80", "$90"]
    
    let menus : [Int : [String : String]] = [
        0 : ["name":"麻辣牛肉麵1", "price":"$100"],
        1 : ["name":"麻辣牛肉麵2", "price":"$200"],
        2 : ["name":"麻辣牛肉麵3", "price":"$300"],
        3 : ["name":"麻辣牛肉麵4", "price":"$400"],
        4 : ["name":"麻辣牛肉麵5", "price":"$500"],
        5 : ["name":"麻辣牛肉麵6", "price":"$600"],
        6 : ["name":"麻辣牛肉麵7", "price":"$700"],
        7 : ["name":"麻辣牛肉麵8", "price":"$800"],
        8 : ["name":"麻辣牛肉麵9", "price":"$900"],
        9 : ["name":"麻辣牛肉麵10", "price":"$1000"]
    ]
    
    
    // menu item
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menus.keys.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell( withReuseIdentifier: "Cell", for: indexPath) as! MyCollectionViewCell
//        cell.imageView.image = UIImage(named: images[indexPath.row])
        
        // menu item title
//        cell.menuTitleLabel.text = self.items[indexPath.item]
//        cell.menuTitleLabel.backgroundColor = UIColor.cyan
//
//        // menu item price
//        cell.menuPriceCell.text = self.items[indexPath.item]
//        cell.menuPriceCell.backgroundColor = UIColor.cyan
        
        cell.contentView.backgroundColor = UIColor.white
//
        if let ar_index = menus.index(forKey: indexPath.row)  {
            if let name = menus[ar_index].value["name"] {
                cell.menuTitleLabel.text = name
            }
            
            if let price = menus[ar_index].value["price"] {
                cell.menuPriceCell.text = price
            }
        }

        return cell
    }
    
    // 已點項目
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menus.keys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = tableView.dequeueReusableCell( withIdentifier: "orderedCell", for: indexPath) as! OrderedTableViewCell

        if let ar_index = menus.index(forKey: indexPath.row)  {
            if let name = menus[ar_index].value["name"] {
                tableCell.orderedTitleLabel.text = name
            }
            
            if let price = menus[ar_index].value["price"] {
                tableCell.orderedPriceLabel.text = price
            }
        }
        
        return tableCell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

