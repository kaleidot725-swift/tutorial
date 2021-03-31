//
//  30_readline.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/03/31.
//

import Foundation

func no30() {
    var num = 0
    while let line = readLine() {
        num += 1
        print("\(num) " + line)
    }
}
