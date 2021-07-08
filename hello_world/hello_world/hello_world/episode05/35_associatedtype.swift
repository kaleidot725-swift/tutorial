//
//  35_associatedtype.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/07/07.
//

import Foundation

// associatedtyep を使って宣言される付属型はジェネリクスの機能の1つ
// 特定の方が指定されていない付属型の宣言は型パラメータとして機能する
// 型パラメータや付属型はプログラムの実行時ではなくプログラムをコンパイルする際に静的に解析されることに気をつける
func no35() {
    var a = VectorFloat(x: 10.0, y: 12.0)
    let b = VectorDouble(vectorFloat: a)
    print(b)
    
    var g = VectorGrade(x: .A, y: .C)
    print(g)
}

protocol SimpleVector {
    associatedtype Element
    var x : Element { get set }
    var y : Element { get set }
}

struct VectorFloat : SimpleVector {
    typealias Element = Float
    var x, y: Float
}

struct VectorDouble : SimpleVector, CustomStringConvertible {
    var x, y: Double
    var description: String { return "[\(x), \(y)]" }
    
    init(x: VectorDouble.Element, y: VectorDouble.Element) {
        self.x = x; self.y = y
    }
    
    init(vectorFloat d: VectorFloat) {
        self.init(x: Double(d.x), y: Double(d.y))
    }
}

struct VectorGrade : SimpleVector, CustomStringConvertible {
    enum Element : String { case A, B, C, D, X }
    var x, y: Element
    var description: String { return "[\(x), \(y)]" }
}
