//
//  38_comparable.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/07/10.
//

import Foundation

func no38() {
    let t1 = Time(hour:9, min:0)
    let t2 = Time(hour:12, min:30)
    let t3 = Time(hour:12, min:15)
    
    print( t1 != t2 )
    print( t1 > t3 )
    print( [t1, t2, t3].sorted() )
}


struct Time : Comparable, CustomStringConvertible {
    let hour, min: Int
    
    static func ==(lhs: Time, rhs: Time) -> Bool {
        return lhs.hour == rhs.hour && lhs.min == rhs.min
    }
    
    static func <(lhs: Time, rhs: Time) -> Bool {
        return lhs.hour < rhs.hour
            || (lhs.hour == rhs.hour && lhs.min < rhs.min)
    }
    
    var description : String {
        let h = hour < 10 ? "\(hour)":"\(hour)"
        let m = min < 10 ? "0\(min)":"\(min)"
        
        return h + ":" + m
    }
}
