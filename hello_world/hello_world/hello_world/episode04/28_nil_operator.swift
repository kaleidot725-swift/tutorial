//
//  28_nil_operator.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/03/30.
//

import Foundation

func no28() {
    let opv : String? = nil
    let def : String = "デフォルト"
    let str = (opv != nil) ? opv! : def
    print(str)
}
