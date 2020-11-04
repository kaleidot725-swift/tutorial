//
//  no3.swift
//  hello_world
//
//  Created by kaleidot725 on 2020/11/03.
//

import Foundation

func no3() {
    // No3 型変換
    print("No3")
    
    // 暗黙的な形変換は行わずに明示的にしか型変換ができない
    let i: Int = 10
    let a: Double = Double(i)
    let j: Int = Int(a * 1.25)
    print("int " + String(i) + " double " + String(a) + " int " + String(j))
}
