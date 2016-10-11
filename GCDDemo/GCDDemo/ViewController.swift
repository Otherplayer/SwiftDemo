//
//  ViewController.swift
//  GCDDemo
//
//  Created by __无邪_ on 2016/10/11.
//  Copyright © 2016年 __无邪_. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
//        
//        let mainQueue = DispatchQueue.main
//        NSLog("\(mainQueue)")
        
        
        
//        DISPATCH_QUEUE_PRIORITY_HIGH:        .userInitiated
//        DISPATCH_QUEUE_PRIORITY_DEFAULT:      .default
//        DISPATCH_QUEUE_PRIORITY_LOW:          .utility
//        DISPATCH_QUEUE_PRIORITY_BACKGROUND:  .background
        
        
//        DispatchQueue.global(qos: .background).async {
//            NSLog("back")
//            DispatchQueue.main.async {
//                //ssdaffsd
//                NSLog("main")
//            }
//        }
        
        
        
        //创建一个队列
//        let queue = DispatchQueue.init(label: "com.hnair.www")
        
        
        
        
        
        
//        print("before" + "\(Thread.current)")
//        
//        // 获取一个全局队列 并 全局队列异步
//        DispatchQueue.global().async {
//            print("task" + "\(Thread.current)")
//        }
//        
//        print("after" + "\(Thread.current)")

        
        
        
//        print("before" + "\(Thread.current)")
//        
//        // 全局队列同步
//        DispatchQueue.global().sync {
//            print("task" + "\(Thread.current)")
//        }
//        
//        print("after" + "\(Thread.current)")
        
        
        
        
//        print("before" + "\(Thread.current)")
//        
//        // 获取一个全局队列
//        let globQueue = DispatchQueue.global()
//        
//        for _ in 0...10 {
//            // 全局对了异步
//            globQueue.async {
//                print("task" + "\(Thread.current)")
//            }
//        }
//        
//        print("after" + "\(Thread.current)")
        
        
        
        
        print("before" + "\(Thread.current)")
        
        // 获取一个全局队列， 全局队列异步
        DispatchQueue.global().async {
            
            print("task" + "\(Thread.current)")
            
            // 主线程异步执行（主线程同步可能会死锁）
            DispatchQueue.main.async(execute: {
                print(" UI - task" + "\(Thread.current)")
            })
//            DispatchQueue.main.async {
//                print(" UI - task" + "\(Thread.current)")
//            }
        }
        
        print("after" + "\(Thread.current)")
        
        
        
        
//        // 自己创建的队列
//        let queue1 = DispatchQueue(label: "com.hnair.www")
//        for _ in 1...10 {
//            // 异步执行 10 次
//            queue1.async {
//                print("task" + "\(Thread.current)")
//            }
//        }
//        // 全局队列
//        let globQ = DispatchQueue.global()
//        
//        for _ in 1...10 {
//            // 异步执行 10 次
//            globQ.async(execute: {
//                print("globQ - task" + "\(Thread.current)")
//            })
//        }
//        // 主队列
//        let mainQ = DispatchQueue.main
//        
//        for _ in 1...10 {
//            // 异步执行 10 次
//            mainQ.async(execute: { 
//                print("mainQ - task" + "\(Thread.current)")
//            })
//        }

        
    
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

