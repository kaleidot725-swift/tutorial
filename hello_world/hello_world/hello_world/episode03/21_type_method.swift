//
//  21_type_method.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/02/14.
//

import Foundation

func no21() {
    struct SimpleDate {
        var year, month, day: Int
        static func isLeap(_ y: Int) -> Bool {
            return (y % 4 == 0) && (y % 100 != 0 || y % 400 == 0)
        }
        
        static func daysOfMonth(_ m:Int, year:Int) -> Int {
            switch m {
            case 2: return isLeap(year) ? 29 : 28
            case 4, 6, 9, 11: return 30
            default: return 31
            }
        }
        
        func leapYear() -> Bool {
            SimpleDate.isLeap(year)
        }
    }
    
    // Static をつけることでタイプメソッド・静的メソッドを定義できる
    let isLeap = SimpleDate.isLeap(2000)
    print(isLeap)
    
    let daysOfMonth = SimpleDate.daysOfMonth(2, year: 2000)
    print(daysOfMonth)
    
    let d = SimpleDate(year: 2024, month: 11, day: 7)
    print("うるう年? ", d.leapYear())
}
