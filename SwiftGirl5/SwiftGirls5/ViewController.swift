//
//  ViewController.swift
//  SwiftGirls5
//
//  Created by Penguin on 2016/8/29.
//  Copyright © 2016年 Angel Chou. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let zoo = ["皮卡丘", "傑尼龜", "皮皮", "妙蛙種子", "雷丘", "綠毛蟲", "喵貓", "快龍", "鯉魚王", "皮可西", "胖丁", "波克比"]
    
    let photos = ["images", "B612-2015-02-01-10-48-45", "影像110"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        title = "ZOO"
    }
    
    private struct Keys {
        static let cellIdentifier = "ThisIsACell"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return zoo.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(Keys.cellIdentifier, forIndexPath: indexPath) as! TableViewCell
        cell.photoImageView.image = UIImage(named: photos[(indexPath.row) % photos.count])
        cell.titleLabel.text = zoo[indexPath.row]
//        cell.textLabel?.text = zoo[indexPath.row]
//        cell.imageView?.image = UIImage(named: "images")
//        cell.imageView?.clipsToBounds = true
        return cell
    }
}

