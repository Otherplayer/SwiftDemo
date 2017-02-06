////: Playground - noun: a place where people can play
//
//import UIKit
//
//var str = "Hello, playground"
//
//
//
//
//func greet(person:String,on day:String) -> String {
//    return "Hello \(person) ,today is \(day)"
//}
//greet(person: "hah", on: "ss")
//
//let numberSymbol: Character = "三"  // 简体中文里的数字 3
//var possibleIntegerValue: Int?
//switch numberSymbol {
//case "1", "١", "一", "๑":
//    possibleIntegerValue = 1
//case "2", "٢", "二", "๒":
//    possibleIntegerValue = 2
//case "3", "٣", "三", "๓":
//    possibleIntegerValue = 3
//    fallthrough//贯穿
//case "4", "٤", "三", "๔":
//    possibleIntegerValue = 4
//default:
//    break
//}
//if let integerValue = possibleIntegerValue {
//    print("The integer value of \(numberSymbol) is \(integerValue).")
//} else {
//    print("An integer value could not be found for \(numberSymbol).")
//}
//
//
//
//func greeting(person: [String: String]) {
//    guard let name = person["name"] else {
//        return
//    }
//    print("Hello \(name)")
//    guard let location = person["location"] else {
//        print("I hope the weather is nice near you.")
//        return
//    }
//    print("I hope the weather is nice in \(location).")
//}
//greeting(person: ["name":"Kris","location":"BJ"])
//
//
//
//let tempX = 10
//
//
//func run()->Void{
//    guard 10 != tempX else {
//        print("sss")
//        return
//    }
//    print("haha")
//}
//
//run()
//
//
//if #available(iOS 10, macOS 10.12, *) {
//    // 在 iOS 使用 iOS 10 的 API, 在 macOS 使用 macOS 10.12 的 API
//} else {
//    // 使用先前版本的 iOS 和 macOS 的 API
//}
//
//
//
//func sing(song:String){
//    print("sing the \(song) song")
//}
//
//sing(song: "tiankong")
//
//
//
//
//
//
//func drive(_ person:String = "xiaobai") -> (person:String,speed:Float){
//    print("\(person) drive the car !")
//    return (person,12);
//}
//
////drive(person: "xiao").person
//
//drive()
//
//func eat(food:String...){
//    print(food)
//}
//
//
//var someInt = 3
//var anotherInt = 107
//
//func swapTwoInts(_ a: inout Int, _ b: inout Int) {
//    let temporaryA = a
//    a = b
//    b = temporaryA
//}
//
//swapTwoInts(&someInt, &anotherInt)
//
//
//
//
//
//
//let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
//
//func backward(_ s1:String,_ s2:String) -> Bool{
//    return s1 < s2
//}
//
//
//
//var res = names.sorted(){$0 > $1}
//print(res)
//
//
////
////6497
////4592
////
////
////37192
//
//
//
//func someFunctionThatTakesAClosure(xxxx: () -> Void) {
//    // 函数体部分
//    print("sssssss");
//}
//
//
//someFunctionThatTakesAClosure(xxxx: {
//    
//})
//
//
//// 以下是不使用尾随闭包进行函数调用
//someFunctionThatTakesAClosure(xxxx: {
//    // 闭包主体部分
//})
//
//// 以下是使用尾随闭包进行函数调用
//someFunctionThatTakesAClosure() {
//    // 闭包主体部分
//}
//





let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

let strings = numbers.map {
    (number) -> Int in
    print(number)
    return number
}


print(strings)








//var name: String? = nil




//var name: String? = "loveway"
//if let name = name {
//    "My name is " + name
//} else {
//    print("name is nil")
//}



//var name: String? = "loveway"
//var age: Int? = 0
//if let name = name, let age = age {
//    "My name is " + name + " \(age)"
//} else {
//    print("name is nil")
//}
//


var name: String? = "loveway"
name?.uppercased()








