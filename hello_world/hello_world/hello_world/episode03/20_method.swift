//
//  20_method.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/02/14.
//

import Foundation

func no20() {
    struct Time {
        let hour, min : Int
        func advanced(min:Int) -> Time {
            var m = self.min + min
            var h = self.hour
            
            if m >= 60 {
                h = (h + m / 60) % 24
                m %= 60
            }
            
            return Time(hour:h, min:m)
        }
    
        func toString() -> String {
            let h = hour < 10 ? "\(hour)" : "\(hour)"
            let m = min < 10 ? "0\(min)" : "\(min)"
            return h + ":" + m
        }
    }
    
    let t1 = Time(hour:22, min:45)
    let t2 = t1.advanced(min:140)
    print(t1.toString())
    print(t2.toString())
    
    struct Clock {
        var hour = 0, min = 0

        // 定義の戦闘の func の直前に mutating というキーワードを置かなければならない。
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
        
        mutating func inc() {
            self.advance(min: 1)
        }
        
        func toString() -> String {
            let h = hour < 10 ? "\(hour)" : "\(hour)"
            let m = min < 10 ? "0\(min)" : "\(min)"
            return h + ":" + m
        }
    }
    
    var tic = Clock(hour:19, min:40)
    tic.advance(min: 19)
    tic.inc()
    print(tic.toString())
}
