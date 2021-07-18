//
//  41_stride.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/07/18.
//

import Foundation

func no41() {
    // StrideTo では to に設定した範囲を含めない
    for x in stride(from:0, to:20, by:2) {
        print(x, terminator:" ")
    }
    print()
    
    
    // StrideThrough では thorough に設定した範囲を含める
    for x in stride(from: 3.0, through: 0.0, by: -0.5) {
        print(x, terminator:" ")
    }
    print()
    
    // Stride に対応するには Strideable のプロトコルに対応する必要がある
}
