//
//  09_type_parameter.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/02/13.
//

import Foundation

func no9(){
    let a:Int = -1
    var b:Int = 0
    
    // 通常の if 文を使った場合
    if a >= 0 {
        b = a
    } else{
        b = -a
    }
    print(b)
    
    // 三項演算子を使った場合
    let c:Int = a >= 0 ? a: -a
    print(c)
}
