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
    
    let personA = Person(firstName: "A", lastName: "B", age: 1)
    let personB = Person(firstName: "B", lastName: "A", age: 2)
    let personC = Person(firstName: "A", lastName: "B", age: 1)
    
    print(personA == personB) // false
    print(personA == personC) // true
    
    let animalA = Animal(name: "Dog", age: 3)
    let animalB = Animal(name: "Cat", age: 4)
    let animalC = Animal(name: "Dog", age: 3)
    
    print(animalA == animalB) // false
    print(animalA == animalC) // true
    
    let blood1 = Blood.a
    let blood2 = Blood.b
    let blood3 = Blood.a
    
    print(blood1 == blood2) // false
    print(blood1 == blood3) // true
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

struct Person: Equatable {
    let firstName: String
    let lastName: String
    let age: Int
    
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
    
    static func ==(lhs: Person, rhs: Person) -> Bool {
        return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName && lhs.age == rhs.age
    }
}

class Animal: Equatable {
    let name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    static func ==(lhs: Animal, rhs: Animal) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
}

enum Blood: Equatable {
    case ab
    case a
    case b
    case o
}
