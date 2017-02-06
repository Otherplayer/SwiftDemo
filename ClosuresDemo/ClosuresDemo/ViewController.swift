//
//  ViewController.swift
//  ClosuresDemo
//
//  Created by __无邪_ on 2017/2/6.
//  Copyright © 2017年 __无邪_. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let studname = { print("Swift 闭包实例。") }
        studname()
        
        
        
        let divide = {(val1: Int, val2: Int) -> Int in
            return val1 / val2
        }
        let result = divide(200, 20)
        print (result)
        
        
        
//        let names = ["AT", "AE", "D", "S", "BE"]
//        
//        // 使用普通函数(或内嵌函数)提供排序功能,闭包函数类型需为(String, String) -> Bool。
//        func backwards(s1: String, s2: String) -> Bool {
//            return s1 > s2
//        }
//        let reversed = names.sorted(by: backwards)
//        
//        print(reversed)
        
//        let names = ["AT", "AE", "D", "S", "BE"]
//        
//        let reversed = names.sorted( by: { $0 > $1 } )
//        print(reversed)
        
//        let names = ["AT", "AE", "D", "S", "BE"]
//        
//        let reversed = names.sorted(by: >)
//        print(reversed)
        
        let names = ["AT", "AE", "D", "S", "BE"]
        
        //尾随闭包
//        let reversed = names.sorted() { $0 > $1 }
        let reversed = names.sorted { $0 > $1 }
        print(reversed)
        
        
        
        
//        func makeIncrementor(forIncrement amount: Int) -> () -> Int {//返回值是一个()-> Int的函数
//            var runningTotal = 0
//            func incrementor() -> Int {
//                runningTotal += amount
//                return runningTotal
//            }
//            return incrementor
//        }
//        
//        let incrementByTen = makeIncrementor(forIncrement: 10)
//        
//        // 返回的值为10
//        print(incrementByTen())
//        
//        // 返回的值为20
//        print(incrementByTen())
//        
//        // 返回的值为30
//        print(incrementByTen())
        
        func makeIncrementor(forIncrement amount: Int) -> () -> Int {
            var runningTotal = 0
            func incrementor() -> Int {
                runningTotal += amount
                return runningTotal
            }
            return incrementor
        }
        
        let incrementByTen = makeIncrementor(forIncrement: 10)
        
        // 返回的值为10
        incrementByTen()
        
        // 返回的值为20
        incrementByTen()
        
        // 返回的值为30
        incrementByTen()
        
        // 返回的值为40
        incrementByTen()
        
        let alsoIncrementByTen = incrementByTen
        
        // 返回的值也为50
        print(alsoIncrementByTen())
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

