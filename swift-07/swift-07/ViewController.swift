//
//  ViewController.swift
//  swift-07
//
//  Created by chen on 2017/1/17.
//  Copyright © 2017年 Aircos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //数组的使用
        //1.可变数组
        var str = [1,2,3]
        str[1] = 5
        print("str=\(str)")
        //2.数组合并
        var array1 = ["why","are","you","from"]
        let array2 = ["i","am","from","henan"]
        let array3 = array1 + array2
        print(array3)
        //3.插入元素
        array1.insert("?", at: 4)
        print(array1)
        //4.追加元素
        str.append(4)
        print(str)
        //5.删除指定位置的元素
        str.remove(at: 0)
        print("new str =\(str)")
        //6.删除末尾元素
        str.removeLast()
        print("delete last item = \(str)")
        
        //7.删除元素保留存储空间
        let result = str
        str.removeAll(keepingCapacity: true)
        print(result)
        print(str)
        
        
        // as操作符是一个类型转换操作符,主要用于实例在子类和父类间的转换.
        //Any可以表示任何类型，包括方法类型（function types）。用来修饰任意类型的实例,包括AnyObject修饰的实例.
        let mutabArray = ["hello","swift","1",1,1.2] as [Any]
        print(mutabArray)
        
        //Any 其实Any是AnyObject的总类,完全覆盖AnyObject
        var things = [Any]()
        things.append(0)
        things.append(0.0)
        things.append(0.3)
        things.append(3)
        things.append("hello")
        things.append((3.0,7.0))
        things.append(getAll(month: 4))
        print(things)
        
        //for循环
        for thing in things {
            switch thing {
            case 0 as Int:
                print("这是一个整形")
            case 0 as Double:
                print("这是一个double")
            case let someInt as Int :
                print("\(someInt)是一个整型")
            case is Double :
                print("其它double型")
            case let someString as String :
                print("字符串是\(someString)型")
            case let (x,y) as (Double, Double):
                print("坐标（x,y）是\(x),\(y)")
            default:
                print("其它值")
            }
        }
    }
    func getAll(month:Int) -> Double {
        return Double(month * 2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

