//
//  ViewController.swift
//  SwiftGirls6
//
//  Created by Penguin on 2016/10/3.
//  Copyright © 2016年 Angel Chou. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {

    @IBOutlet weak var showMessage: UITextView!
    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    
    var ref: FIRDatabaseReference!
    var name = ""
    
    @IBAction func sendButtonClick(sender: AnyObject) {
        ref = FIRDatabase.database().reference()
        //ref.child("chat").setValue(["name": "Avon", "say": textInput.text!])
        
        //寫入名字和對話
        let key = ref.child("chat").childByAutoId().key
        let post = ["name": name, "say": textInput.text!]
        
        //另一種顯示更新項目的寫法
        //let childUpdates = ["/chat/\(key)": post, "/user-chat/\("Avon")/\(key)/": post]
        //let childUpdates = ["/chat/\(key)": post]
        let childUpdates = ["\(key)": post]
        ref.updateChildValues(childUpdates)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        FIRDatabase.database().reference().observeEventType(.ChildAdded, withBlock: { (snapshot) in
            if snapshot.value != nil {
                //如果是有資料的狀況
                
                //讀取名字
                let getName = snapshot.value!.objectForKey("name") as! String
                
                //讀取對話
                let getSay = snapshot.value!.objectForKey("say") as! String
                
                //顯示名字+對話 全部內容
                self.showMessage.text = self.showMessage.text + "\(getName)" + " : " + "\(getSay)" + "\n"
                
                //當完成以上動作之後，就清空剛填寫的對話欄，這樣即可立即在空的對話欄內再次輸入想說的話
                self.textInput.text = ""
            }
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

