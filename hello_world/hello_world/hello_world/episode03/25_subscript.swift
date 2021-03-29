//
//  25_subscript.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/02/16.
//

import Foundation

func no25() {
    // 添字付けとは、複数個のプロパティがある時、配列の要素に対してするように、添字を使ってアクセスできるようにする機能です。
    struct FoodMenu {
        let menu = ["ざる", "かけ", "たぬき"]
        var submenu = ["とろろ", "天ぷら", "南ばん"]
        let count = 6
        
        // 添字を使って内部にある menu を取得したり設定したりする
        subscript (i:Int) -> String {
            get {
                return i < 3 ? menu[i] : submenu[i - 3]
            }
            set {
                if i > 2 && i < 6 {
                    submenu[i - 3] = newValue // 通常の Setter と同様に引数がある、省略した場合は newValue となります。
                }
            }
        }
    }
    
    var menu = FoodMenu()
    for i in 0 ..< menu.count {
        print(menu[i], terminator:"")
    }
    print()

    menu[0] = "もり"
    menu[5] = "くるみ"
    for i in 0 ..< menu.count {
        print(menu[i], terminator:"")
    }
    print()
}
