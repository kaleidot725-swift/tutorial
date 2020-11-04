//
//  no4.swift
//  hello_world
//
//  Created by kaleidot725 on 2020/11/03.
//

import Foundation

func no4() {
    // No4 比較について
    
    // 整数型ならば異なる型でも比較できる
    let m: UInt = 1000
    let n: Int8 = 64
    print(m == n)
    print(m > n)
    
    // 実数型だと異なる型だと比較できない
    // let d: Double = 1.2
    // let f: Float = 1.4
    // print(d == f) -> Binary operator '==' cannot be applied to operands of type 'Double' and 'Float'
    // print(d > f)  -> Binary operator '>' cannot be applied to operands of type 'Double' and 'Float'
}
