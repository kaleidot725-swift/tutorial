//
//  11_switch.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/02/13.
//

import Foundation

func no11() {
    for n in 0...9 {
        switch n {
        case 0:
            print("none")
        case 1:
            print("one")
        case 2, 3:
            print("a few")
        case 4, 5:
            print("some")
        case 6:
            break
        default:
            print("several")
        }
    }
}
