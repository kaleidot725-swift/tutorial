//
//  13_do.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/02/13.
//

import Foundation

func no13() {
    let bloods = [ "A", "B", "C", "D"]
    for blood in bloods {
        search: do {
            for t in [ "A", "B", "O", "AB"] {
                if blood == t {
                    print("\(blood) が見つかりました")
                    break search
                }
            }
            print("見つかりませんでした")
        }
    }

}
