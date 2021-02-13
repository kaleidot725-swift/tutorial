//
//  15_fuction_option.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/02/13.
//

import Foundation

func no15() {
    // inout引数をつけると関数を呼び出す箇所で定義した変数を参照できるようになる
    func mySwap(_ a: inout Int, _ b: inout Int) {
        let t = a
        a = b
        b = t
    }

    // 引数の既定値を設定できる
    func setFont(name: String, size:Float = 12.0, bold:Bool = false) {
        print("\(name) \(size)" + (bold ? " [B]" : ""))
    }

    // 引数の規定値を設定できる
    func setGray(level:Int = 255, _ alpha: Float = 1.0) {
        print("Gray=\(level), Alpha=\(alpha)")
    }

    // ネストされた関数を定義できる
    func printMonth(first fday:Int, days:Int) {
        var d =  1 - fday
        func daystr() -> String {
            if d <= 0 {
                return "     "
            }else {
                return (d < 10 ? "    \(d)" : "   \(d)")
            }
        }
        while d <= days {
            var line = ""
            for _ in 0 ..< 7 {
                line += daystr()
                d += 1
                if d > days { break }
            }
            print(line)
        }
    }

    var a = 1
    var b = 2
    
    print("before ", " a ", String(a), " b ", String(b))
    
    // inout を付加した引数を受け渡すときには & をつけて渡してやる。
    mySwap(&a, &b)
    
    print("after ", " a ", String(a), " b ", String(b))
    
    setFont(name:"RaglanPunch")
    setFont(name:"Courier", bold:true)
    setFont(name:"Times", size:16.0, bold:true)
    
    setGray()
    setGray(level:240)
    setGray(level:128, 0.5)
    
    printMonth(first: 1, days: 31)
}
