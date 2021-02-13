//
//  14_func.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/02/13.
//

import Foundation

func no14() {
    // 引数ラベルをつけて引数を渡す
    let t1 = count(n:1)
    print(String(t1))
    
    let t2 = count(n:2)
    print(String(t2))

    let t3 = count(n:3)
    print(String(t3))

    let d1 = area(height: 1.24, width: 2.34)
    print(String(d1))
    
    let b1 = compare(1, 2)
    print(String(b1))
    
    ignore_loop()
}

var total = 0

func count(n: Int) -> Int {
    total += n
    return total
}

// 引数ラベルと仮引数を定義できるようになっている
func area(height h:Double, width w:Double) -> Double {
    return h * w
}

// 引数ラベルに関してはアンダーバーで省略できる
func compare(_ a:Int, _ b:Int) -> Bool {
    return a == b
}

// アンダーバーは無視するとった意味合いで使われる。代入された値を使わない、For文の制御変数を使わないなどの使い方がある。
func ignore_loop() {
    for _ in 1...10 {
        print("PRINT!!")
    }
}
