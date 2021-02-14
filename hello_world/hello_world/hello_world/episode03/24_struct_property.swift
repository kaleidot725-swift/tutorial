//
//  24_struct_property.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/02/15.
//

import Foundation

func no24() {
    // 定数や変数が機能を提供するプロパティを格納型プロパティ
    // 値の参照と更新の機能を手続きで構成するプロパティを計算型プロパティと呼ぶ
    // その型に関連した情報を表すプロパティを定義できる、この機能をタイププロパティや静的プロパティと呼ばれる
    
    // タイププロパティ
    struct DateWithString {
        let string: String
        let year, month, day: Int
        
        // 構造体に1つしかないプロパティ（定数）
        static let mons = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]

        // 構造体に1つしかないプロパティ（変数）
        static var longFormat = false
        
        init(_ y:Int, _ m:Int, _ d:Int) {
            year = y; month = m; day = d
            string = DateWithString.longFormat
                ? DateWithString.longString(y, m, d)
                : DateWithString.shortString(y, m, d)
        }
        
        static func twoDigits(_ n:Int) -> String {
            let i = n % 100
            return i < 10 ? "0\(i)" : "\(i)"
        }
        
        static func longString(_ y:Int, _ m:Int, _ d:Int) -> String {
            return "\(y)-" + twoDigits(m) + "-" + twoDigits(d)
        }
        
        static func shortString(_ y:Int, _ m:Int, _ d:Int) -> String {
            return twoDigits(d) + mons[m-1] + twoDigits(y)
        }
    }
    
    let a = DateWithString(2025, 1, 20)
    print(a.string)
    
    // 構造体に定義したタイププロパティを変更する
    DateWithString.longFormat = true
    let b = DateWithString(2025, 1, 21)
    print(b.string)
}
