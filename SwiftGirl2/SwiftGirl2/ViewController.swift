//
//  ViewController.swift
//  SwiftGirl2
//
//  Created by Penguin on 2016/6/7.
//  Copyright © 2016年 Penguin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let second = segue.destinationViewController as! ViewController2ViewController
        second.content = self.nameInput.text!
        
    }

}

