//
//  ViewController.swift
//  AlertDemo
//
//  Created by __无邪_ on 2016/10/12.
//  Copyright © 2016年 __无邪_. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labTip: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func showAlert(_ sender: AnyObject) {
        self.showTip(UIAlertControllerStyle.alert)
    }

    @IBAction func showSheet(_ sender: AnyObject) {
        self.showTip(UIAlertControllerStyle.actionSheet)
    }
    
    @IBAction func showLogin(_ sender: AnyObject) {
        
        let alert:UIAlertController = UIAlertController.init(title: "请输入密码", message: nil, preferredStyle: .alert)
        let cancel = UIAlertAction.init(title: "取消", style: UIAlertActionStyle.cancel) { (cancelAction: UIAlertAction) in
            self.labTip.text = "Canceled"
        }
        
        let ok = UIAlertAction.init(title: "谢谢", style: UIAlertActionStyle.default) { (nil) in
            self.labTip.text = "Confirmed"
            
            //也可以用下标的形式获取textField let login = alertController.textFields![0]
            let pwd = alert.textFields![0]
            let pwd1 = alert.textFields!.first!
            let pwd2 = alert.textFields!.last!
            
            
            print("\(pwd.text,pwd1.text,pwd2.text)")
            
            
        }
        
        alert.addTextField { (pwd:UITextField) in
            pwd.placeholder = "密码"
            pwd.isSecureTextEntry = true
        }
        
        alert.addAction(cancel)
        alert.addAction(ok)
        
        self.present(alert, animated: true) {
            print("completed")
        }
        
    }
    
    
    
    func showTip(_ style:UIAlertControllerStyle) {
        let alert:UIAlertController = UIAlertController.init(title: "警告", message: "中秋快乐！", preferredStyle: style)
        let cancel = UIAlertAction.init(title: "取消", style: UIAlertActionStyle.cancel) { (cancelAction: UIAlertAction) in
            self.labTip.text = "Canceled"
        }
        
        let ok = UIAlertAction.init(title: "谢谢", style: UIAlertActionStyle.default) { (nil) in
            self.labTip.text = "Confirmed"
        }
        
        alert.addAction(cancel)
        alert.addAction(ok)
        
        
        self.present(alert, animated: true) {
            print("completed")
        }
    }
    
    
    
    
    
    

}

