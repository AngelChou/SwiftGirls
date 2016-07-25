//
//  Page3.swift
//  SwiftGirl2
//
//  Created by Penguin on 2016/6/12.
//  Copyright © 2016年 Penguin. All rights reserved.
//

import UIKit

class Page3: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let address = "https://github.com/AngelChou"
        let url = NSURL(string: address)
        let request = NSURLRequest(URL: url!)
        self.webView.loadRequest(request)
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
