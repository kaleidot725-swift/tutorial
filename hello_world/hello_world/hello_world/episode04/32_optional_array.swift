//
//  32_optional_array.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/03/31.
//

import Foundation

func no32() {
    var mark : [Int?] = [ 19, 5, nil, 7, 3, nil, 0, 10, 1, 0 ]
    mark.forEach { i in
        let str = (i != nil) ? String(i!) : "欠席"
        print(str)
    }
}

