//
//  12_label_loop.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/02/13.
//

import Foundation

func no12() {
    print("CALENDAR")
    
    let days = 31
    let firstDay = 2
    
    var w = 0
    while w < firstDay {
        print("   ", terminator:"")
        w += 1
    }
    
    var d = 1
    loop: while true {
        while w < 7 {
            let pad =  d < 10 ? " " : ""
            print(pad + " \(d)", terminator:"")
            w += 1
            d += 1
            if d > days {
                print()
                break loop
            }
        }
        
        print()
        w = 0
    }
    
    print("LEAP")
    for year in 2000...2020 {
        leap: if year % 4 == 0 {
            if year % 100 == 0 {
                if year % 400 == 0 {
                    print("\(year)年は400で割り切れるのでうるう年です。")
                    break leap
                }
                print("\(year)年は100で割り切れるのでうるう年ではありません。")
                break leap
            }
            print("\(year)年は4で割り切れるのでうるう年です。")
        } else {
            print("\(year)年は4で割り切れないのでうるう年ではありません。")
        }
    }
}
