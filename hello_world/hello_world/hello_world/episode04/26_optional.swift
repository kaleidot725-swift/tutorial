//
//  26_optional.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/03/29.
//

import Foundation

func no26() {
    // オプショナル型
    var b: Int? = 10 // オプショナル Int 型なので nil を代入できる
    b = nil
    
    // オプショナル型のif分岐
    var nagano : Int? = Int("1998")
    if nagano != nil {
        print("Nagano: \(nagano!)")
    }
    
    // オプショナル束縛
    if var y = Int("1986") {
        y += 75
        print("ハレー彗星は\(y)年に来る")
    }
    
    // 同じ名前を使うことができる
    let halley : Int? = Int("1986")
    if var halley = halley {
        print("ハレー彗星は\(halley)年に来た")
        halley += 75
        print("次は\(halley)年だと予想される")
    }
    
    // if let 文は区切って複数の記述を並べることができる
    if let sapporo = Int("1972"), let nagano = Int("1998") {
        print("\(nagano - sapporo) years")
    }
    
    // オプショナルだけではなく、その他の条件も組み合わせた上で処理が実施できる
    let fukuoka = 1998
    if fukuoka < 2000, let tokyo = Int("2020"), tokyo > fukuoka {
        print("\(tokyo - fukuoka)")
    }
}

