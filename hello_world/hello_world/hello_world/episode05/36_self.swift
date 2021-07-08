//
//  36_self.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/07/08.
//

import Foundation

func no36() {
    let a = VectorInt(x:10, y:3)
    print(a.transposed())
    
    let b = VectorInt(x:-1, y:2)
    print(a + b)
}

protocol TransVector {
    associatedtype Element
    var x: Element { get }
    var y: Element { get }
    func transposed() -> Self
    static func +(lhs: Self, rhs: Self) -> Self
}

struct VectorInt: TransVector, CustomStringConvertible {
    typealias Element = Int
    let x, y: Int
    
    func transposed() -> VectorInt {
        return VectorInt(x: self.y, y: self.x)
    }
    
    static func +(lhs: VectorInt, rhs: VectorInt) -> VectorInt {
        return VectorInt(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
    }
    var description: String { return "[\(x), \(y)]" }
}
