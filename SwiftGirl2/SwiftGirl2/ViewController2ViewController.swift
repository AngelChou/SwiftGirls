//
//  ViewController2ViewController.swift
//  SwiftGirl2
//
//  Created by Penguin on 2016/6/7.
//  Copyright © 2016年 Penguin. All rights reserved.
//

import UIKit

class ViewController2ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var content: String = ""
    
    @IBOutlet weak var photo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = content
        self.photo.layer.cornerRadius = self.photo.frame.size.width/2
        self.photo.layer.masksToBounds = true
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
