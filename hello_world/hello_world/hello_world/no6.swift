//
//  no6.swift
//  hello_world
//
//  Created by kaleidot725 on 2020/11/04.
//

import Foundation

func no6() {
    // No6 配列
    let a = [ 2.0, 5.1, 8.2, 11.3, 7.4 ]
    print(a)
    
    let b: [Int] = [ 2, 5, 8, 11, 7]
    print(b)
    
    var s: [String] = [String]()
    
    // append
    s.append("TEST1")
    s.append("TEST2")
    print(s)

    // remove
    s.remove(at: 0)
    print(s)

    // count
    print(s.count)
    
    // plus
    let m = s + ["TEST3", "TEST4"]
    print(m)
}
