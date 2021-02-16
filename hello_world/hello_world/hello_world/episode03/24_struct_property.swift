//
//  24_struct_property.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/02/15.
//

import Foundation

var serialNumber = 2127

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
    
    // 計算型プロパティで Getter や Setter を定義できる。
    // 次のように Getter を定義できる、 Getter プロパティを呼び出したときに値を再評価する処理がかける
    struct LCD  {
        struct Size { var width, height: Int }
        
        static var stdHeight = 1080
        static var stdWidth = 1920
        static var stdSize : Size {
            get {
                return Size(width: stdWidth, height: stdHeight)
            }
        }
        
        static func sn() -> Int { serialNumber += 1; return serialNumber }
        let size: Size
        let serial = "CZ:" + String(LCD.sn())
        
        init(size: Size = LCD.stdSize) { self.size = size }
        
        func show() {
            print(serial, "(\(size.width)x\(size.height))")
        }
    }
    
    let display1 = LCD(size: LCD.Size(width: 800, height: 600))
    display1.show()
    
    LCD.stdHeight = 1200
    let display2 = LCD()
    display2.show()
    
    LCD.stdWidth = 2560
    let display3 = LCD()
    display3.show()
    
    // 次のように Getter や Setter を定義できる、 Setter では新たに指定された値を受け取る仮引数を定義できる。
    // もし仮引数の定義が省略された場合には newValue という名前でアタラに指定された値を利用できる。
    struct Ounce {
        var mL:Double = 0.0
        static let ounceUS = 29.5735
        init(ounce:Double) {
            self.ounce = ounce
        }
        
        var ounce: Double {
            get { mL / Ounce.ounceUS }
            set { mL = newValue * Ounce.ounceUS  }
        }
    }
    
    var c = Ounce(ounce: 2.0)
    print(c.mL)
    c.ounce += 8.0
    print(c.ounce)
    
    // プロパティオブザーバ
    // newValue という oldValue という参照可能です
    struct Stock {
        let buyingPrice: Int
        var high = false
        var count = 0
        
        init(price:Int) {
            buyingPrice = price
            self.price = price
        }
        
        var price:Int {
            willSet {
                count += 1
                high = newValue > buyingPrice
            }
            didSet {
                print("\(oldValue) => \(price)")
            }
        }
    }
    
    var st = Stock(price:400)
    st.price = 410
    st.price = 380
    st.price = 430
    print("\(st.count), \(st.high)")
}
