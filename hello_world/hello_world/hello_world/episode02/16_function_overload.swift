//
//  16_function_overload.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/02/14.
//

import Foundation

func no16() {
    func mySwap(_ a: inout Int, _ b: inout Int) {
        let t = a
        a = b
        b = t
    }

    // 同じ関数名で引数の型や個数が異なる別の関数を定義できる
    func mySwap(_ a: inout Int, _ b: inout Int, _ c: inout Int) {
        let t = a
        a = b
        b = c
        c = t
    }

    // また引数ラベルを変えることでも別の関数として定義できる
    func mySwap(little a: inout Int, great b: inout Int) {
        // 通常の mySwap とはことなり a が b より大きいときにのみ動作するようにしてみる
        if (a > b) {
            let t = a
            a = b
            b = t
        }
    }
    
    var a = 1
    var b = 2
    var c = 3
    
    mySwap(&a, &b)
    print("a " + String(a) + " b " + String(b) + " c " + String(c))
    
    mySwap(&a, &b, &c)
    print("a " + String(a) + " b " + String(b) + " c " + String(c))
    
    mySwap(little: &a, great: &b)
    print("a " + String(a) + " b " + String(b) + " c " + String(c))
}
