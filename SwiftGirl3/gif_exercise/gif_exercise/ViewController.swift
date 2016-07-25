//
//  ViewController.swift
//  gif_exercise
//
//  Created by Penguin on 2016/6/30.
//  Copyright © 2016年 Penguin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var imageArray:[UIImage] = []
        for i in 4...6{
            imageArray.append(UIImage(named:"\(i)")!)
        }
        image.animationImages = imageArray
        image.animationDuration = 1
        image.startAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

