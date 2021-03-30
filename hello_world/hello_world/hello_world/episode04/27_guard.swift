//
//  27_guard.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/03/29.
//

import Foundation

func no27() {
    let stock = [ "01", "2", "4", "05", "8", "q", "X" ]
    for str in stock {
        guard let v = Int(str) else {
            print(str + "??")
            break
        }
        print(v,terminator:"　")
     }
}
