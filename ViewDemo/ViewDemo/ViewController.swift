//
//  ViewController.swift
//  ViewDemo
//
//  Created by __无邪_ on 2016/10/12.
//  Copyright © 2016年 __无邪_. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var dimension: Int = 4
    var width:CGFloat = 50
    var padding:CGFloat = 6
    var backgrounds:Array<UIView>!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.backgrounds = Array<UIView>()
        self.view.backgroundColor = UIColor.white
        
        self.setupGameMap()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func setupGameMap() {
        var x:CGFloat = 50
        var y:CGFloat = 150
        
        for _ in 0..<dimension
        {
            y = 150
            for _ in 0..<dimension
            {
                //初始化视图
                let background = UIView(frame:CGRect(x:x, y:y, width:width, height:width))
                background.backgroundColor = UIColor.darkGray
                self.view.addSubview(background)
                //将视图保存起来，以备后用
                backgrounds.append(background)
                y += padding + width
            }
            x += padding+width
        }
    }
    
    
    
    
    
    


}

