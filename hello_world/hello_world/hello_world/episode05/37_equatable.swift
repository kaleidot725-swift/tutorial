//
//  37_equatable.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/07/08.
//

import Foundation

func no37() {
    let mx: VectorInt.Element = 10
    let a = LabeledPoint(label:"A", x:mx, y:7)
    var b = LabeledPoint(label:"B", x:10, y: mx - 3)
    print(a != b)
}

protocol EqVector: Equatable {
    associatedtype Element: Equatable
    var x : Element { get set }
    var y : Element { get set }
}

struct LabeledPoint : EqVector, CustomStringConvertible {
    var label: String
    var x, y: Int
    var description: String { return "[\(x), \(y)]" }
}

struct ShopOnMap: EqVector, CustomStringConvertible {
    var shop: (name: String, comment: String?)
    var x, y: Float
    init(_ s: String, N: Float, E: Float, comment: String? = nil) {
        shop = (name:s, comment:comment)
        x = E; y = N
    }
    
    var description: String {
        var r = shop.name + "(N\(y), E\(x)"
        
        if let msg = shop.comment { r += " " + msg}
        return r
    }
    
    static func ==(lhs: ShopOnMap, rhs: ShopOnMap) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}

//  Equatable の定義
//   - 二項演算子 == を定義している、これにて比較ができるようになっているらしい
//   - 二項演算子 != は定義していない、これは == を否定した結果とイコールになるので定義していなことらしい
//
//  public protocol Equatable {
//      static func == (lhs: Self, rhs: Self) -> Bool
//  }
