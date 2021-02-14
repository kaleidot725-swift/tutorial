//
//  23_struct_initializer.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/02/14.
//

import Foundation

func no23() {
    struct Clock {
        var hour = 0, min = 0
        
        mutating func advance(min:Int) {
            let m = self.min + min
            if m >= 60 {
                self.min = m % 60
                let t = self.hour + m / 60
                self.hour = t % 24
            }else {
                self.min = m
            }
        }
      
        func toString() -> String {
            let h = hour < 10 ? "\(hour)" : "\(hour)"
            let m = min < 10 ? "0\(min)" : "\(min)"
            return h + ":" + m
        }
        
        static func +(lhs: Clock, rhs: Int) -> Clock {
            var t = lhs
            t.advance(min: rhs)
            return t
        }
        
        static func +=(lhs: inout Clock, rhs: Int) {
            lhs.advance(min: rhs)
        }
    }
}
