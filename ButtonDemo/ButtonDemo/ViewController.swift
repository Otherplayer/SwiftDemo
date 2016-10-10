//
//  ViewController.swift
//  ButtonDemo
//
//  Created by __无邪_ on 2016/10/10.
//  Copyright © 2016年 __无邪_. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /// UIButton
        
        
        // 设置Frame
        let size = CGSize.init(width: 200, height: 64)
        let runBtnFrame = CGRect.init(origin: CGPoint.init(x: 100, y: 200), size: size)
        
        // 创建Button
        let runBtn = UIButton.init(frame: runBtnFrame)
        
        // 配置Button
        runBtn.setTitle("UIButton", for: UIControlState.normal);
        runBtn.setTitle("Highlighted", for: UIControlState.highlighted)
        runBtn.backgroundColor = UIColor.red;
        runBtn.setTitleColor(UIColor.white, for: UIControlState.normal)
        runBtn.setTitleColor(UIColor.blue, for: UIControlState.highlighted)
        runBtn.layer.cornerRadius = 5;
        runBtn.layer.masksToBounds = true;
        
        
        // 设置事件
        runBtn.addTarget(self, action:#selector(run(sender:)), for:.touchUpInside)
        
        
        self.view.addSubview(runBtn)
        
        
        //        //创建一个ContactAdd类型的按钮
        //        let button:UIButton = UIButton(type:.contactAdd)
        //        //设置按钮位置和大小
        //        button.frame = CGRect(x:10, y:150, width:100, height:30)
        //        //设置按钮文字
        //        button.setTitle("按钮", for:.normal)
        //        self.view.addSubview(button)
        
        
        let button = UIButton(frame:CGRect(x:10, y:150, width:100, height:30))
        
        button.setTitle("普通状态", for:.normal) //普通状态下的文字
        button.setTitle("触摸状态", for:.highlighted) //触摸状态下的文字
        button.setTitle("禁用状态", for:.disabled) //禁用状态下的文字
        
        button.setTitleColor(UIColor.white, for: .normal) //普通状态下文字的颜色
        button.setTitleColor(UIColor.green, for: .highlighted) //触摸状态下文字的颜色
        button.setTitleColor(UIColor.gray, for: .disabled) //禁用状态下文字的颜色
        
        button.setTitleShadowColor(UIColor.green, for:.normal) //普通状态下文字阴影的颜色
        button.setTitleShadowColor(UIColor.yellow, for:.highlighted) //普通状态下文字阴影的颜色
        button.setTitleShadowColor(UIColor.gray, for:.disabled) //普通状态下文字阴影的颜色
        
        button.backgroundColor = UIColor.black
        
        button.setImage(UIImage.init(named: "icon"), for: .normal)//设置图标
        button.adjustsImageWhenHighlighted=false //使触摸模式下按钮也不会变暗（半透明）
        button.adjustsImageWhenDisabled=false //使禁用模式下按钮也不会变暗（半透明）
        
        
        self.view.addSubview(button)
        

    }
    
    
    func run(sender:UIButton){
        print("k5 run !")
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NSLog("a%@", "ss")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

