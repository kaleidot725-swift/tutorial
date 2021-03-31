//
//  33_failed_initializer.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/03/31.
//

import Foundation

func no33() {
    let zeroTime = SimpleTime()
    let nilTime = SimpleTime(-1, -1)
    
    print(zeroTime)
    print(nilTime)
}

struct SimpleTime {
    let hour, min: Int
    init ?(_ h:Int, _ m:Int) {
        if h < 0 || h > 23 || m < 0 || m > 59 {
            return nil
        }
        
        hour = h
        min = m
    }
    
    init() {
        hour = 0
        min = 0
    }
}
