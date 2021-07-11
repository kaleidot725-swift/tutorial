//
//  40_random.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/07/11.
//

import Foundation

func no40() {
    print(Int.random(in: 1...6))
    print(Double.random(in: 2.71828 ..< 3.14159))
    print(Bool.random())
    
    print((4..<10).shuffled())
    print((1...9).randomElement())
    print(["話す", "戦う", "逃げる"].randomElement())
}
