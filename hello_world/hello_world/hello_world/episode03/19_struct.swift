//
//  19_struct.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/02/14.
//

import Foundation

func no19() {
    // 構造体は値型のデータ、代入や関数呼び出しの際にはデータの実態がコピーされ、新しいインスタンスが生成される
    struct SimpleDate {
        var year: Int = 2020
        var month: Int = 7
        var day: Int = 28
    }
    
    // デフォルトイニシャライザで初期化された値が生成時に
    print(SimpleDate())
    
    struct AnotherDate {
        var month, day : Int
        var year = 1988
    }
    
    // 全項目イニシャライザではプロパティのキーワードを指定して初期化する、初期値が指定されているものは指定しなくても動作する
    print(AnotherDate(month: 5, day: 6, year: 1998))
    print(AnotherDate(month: 8, day: 8))
    
    // 定数に代入された構造体のインスタンスでは各プロパティの値を変更できない
    // let event = SimpleDate()
    // event.day = 000 これを実行するとコンパイルエラーになる
    
    // 構造体には定数を定義できる
    // 定数の初期値を指定しないこともできるが既定イニシャライザを利用できない
    // 初期値を指定しないのであれば全項目イニシャライザを使う必要がある。
    struct Time {
        let in24h: Bool = false
        var hour = 0, min = 0
    }
    
    print(Time())
    
    // init でカスタムイニシャライザを作成できる
    // init では self で自身のインスタンスにアクセスできるらしい

    struct CustomDate {
        var year, month, day: Int
        
        init() {
            self.year = 2095
            self.month = 10
            self.day = 1
        }
    }
    
    print(CustomDate())
    
    // init に関してはオーバーロードできるので、複数個のイニシャライザを定義できる
    struct CustomTime {
        let in24h: Bool
        var hour = 0, min = 0
    
        init(hour:Int, min: Int) {
            in24h = false
            self.hour = hour
            self.min = min
        }
        
        init(hourIn24 h:Int) {
            in24h = true
            hour = h
        }
        
        init(_ hour: Int) {
            self.init(hourIn24: hour)
        }
    }
    
    // このように複数のカスタムイニシャライザを作成した場合には Time() などの既定イニシャライザや全項目イニシャライザが使えなくなるらしい。
    print(CustomTime(hour: 10, min: 30))
    print(CustomTime(hourIn24: 15))
    print(CustomTime(1))
}
