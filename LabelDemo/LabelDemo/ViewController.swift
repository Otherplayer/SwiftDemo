//
//  ViewController.swift
//  LabelDemo
//
//  Created by __无邪_ on 2016/10/10.
//  Copyright © 2016年 __无邪_. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //支持多点触摸
        self.view.isUserInteractionEnabled = true
        
        let label = UILabel.init(frame: CGRect.init(x: 0, y: 100, width: UIScreen.main.bounds.size.width, height: 500))
        
        
        let str = "www.hnair.com"
        
        label.text = str
        
        
        label.textColor = UIColor.green
        label.backgroundColor = UIColor.black
        label.textAlignment = NSTextAlignment.right
        
        label.shadowColor = UIColor.cyan
        label.shadowOffset = CGSize(width:2,height:0.5)
        
        label.font = UIFont.boldSystemFont(ofSize: 30)
        
        label.textAlignment = NSTextAlignment.center
        

        let attrStr = NSMutableAttributedString.init(string: str)
        attrStr.addAttribute(NSFontAttributeName, value: UIFont.systemFont(ofSize: 35, weight: 40),range: NSMakeRange(4, 5))
        attrStr.addAttributes([NSForegroundColorAttributeName:UIColor.red,NSBackgroundColorAttributeName:UIColor.clear],
                              range: NSMakeRange(4, 5))
        
        label.attributedText = attrStr
        
        
        label.isUserInteractionEnabled = true
//        label.isMultipleTouchEnabled = true
//        label.isExclusiveTouch = true
        let tapGesture = UIGestureRecognizer.init(target: self, action: #selector(tap(sender:)))
        label.addGestureRecognizer(tapGesture)
        
        
        self.view.addSubview(label);
        
        
    }

    
    func tap(sender:UILabel) {
        NSLog("title is \("ss")")
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

