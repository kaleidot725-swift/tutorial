//
//  31_implicity_unrapped_optional.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/03/31.
//

import Foundation

func no31() {
    let year: Int! = Int("1986")
    print("ハレー彗星は\(year + 75)年に来る")
    
    var mark : [Int?] = [ 19, 5, nil, 7, 3, nil, 0, 10, 1, 0 ]
    
}

private func castError() {
    // こちらを実行すると nx が nil となりエラーが派生する
    let nx : Int! = Int("next")
    var ps = nx + 1
}
