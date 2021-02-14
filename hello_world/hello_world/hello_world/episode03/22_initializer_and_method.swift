//
//  22_initializer_and_method.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/02/14.
//

import Foundation

func no22() {
    
    // プロパティの初期設定が完了するまではインスタンスメソッドは使えない、どうしても使いたいのであればタイプメソッドにする
    struct DateWithString {
        let string: String
        let year, month, day: Int
        
        init(_ y:Int, _ m: Int, _ d:Int) {
            year = y; month = m; day = d
            string = "\(y)-" + DateWithString.twoDigits(m) + "-" + DateWithString.twoDigits(d)
        }
        
        static func twoDigits(_ n:Int) -> String {
            let i = n % 100
            return i < 10 ? "0\(i)" : "\(i)"
        }
    }
    
    let an1 = DateWithString(2015, 6, 22)
    print(an1.string)
}
