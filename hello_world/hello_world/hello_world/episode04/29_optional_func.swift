//
//  29_optional_func.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/03/30.
//

import Foundation

func no29() {
    let name1 = nickname("シンデレラ", age:35)
    print(name1)
    
    let name2 = nickname(nil, age:20)
    print(name2)
    
    var w: String? = ""
    makeNil(&w)
    print(w ?? "nil")
}

func nickname(_ name: String?, age: Int) -> String {
    let s = name ?? "名無し"
    return "浪速の" + s + "(\(age)歳)"
}

func makeNil(_ p: inout String?) {
    if let s = p, s == "" { p = nil }
}
