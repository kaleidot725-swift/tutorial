//
//  10_while.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/02/13.
//

import Foundation

func no10(){
    let val = 10032
    var i = 1, mask = 2
    
    print("while")
    while mask <= val {
        mask <<= 1
        i += 1
        print("i " + String(i) + " mask " + String(mask))
    }
    
    print("repeat while")
    var n = 7
    repeat {
        print("n " + String(n))

        if n % 2 == 0 {
            n /= 2
        } else {
            n = n * 3 + 1
        }
    } while n > 1
    print("n " + String(n))
    
    print("for-in")
    
    // j の値は 1,2,3,4 となるので 4回実行される
    for j in 1..<5 {
        print("j " + String(j))
    }
    
    // k の値は 1,2,3,4,5 となるので 5回実行される
    for k in 1...5 {
        print("k " + String(k))
    }
    
    // 九九を表示してみる
    for l in 1...9 {
        for m in 1...9 {
            print(String(l * m), terminator: " ")
        }
        print()
    }
    
    // where を使うと条件を付与できる
    for o in 1...64 where o % 3 != 0 && o % 8 != 0 {
        print(o, terminator:" ")
    }
    
    // 配列を使って for を回すこともできる
    let group = ["jonah", "visha", "koko", "valment", "tanya"]
    for s in group {
        print(s)
    }
}
