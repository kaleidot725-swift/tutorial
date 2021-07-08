//
//  34_protocol.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/07/07.
//

import Foundation

protocol Human {
    var name: String? { get }
    func sayHello()
}

struct Mob: Human {
    let name: String? = nil
    init() { }
    
    func sayHello() { print("どうも") }
    func cheer() { print("頑張れ") }
}

func no34() {
    struct Time: CustomStringConvertible {
        let hour, min: Int
        var description: String {
            let h = hour < 10 ? "\(hour)":"\(hour)"
            let m = min < 10 ? "\(min)":"\(min)"
            return h + ":" + m
        }
    }

    let tm = Time(hour:19, min:40)
    print(tm)
    
    
    let mob1 : Mob = Mob()
    let mob2 : Mob = Mob()
    
    mob1.sayHello()
    mob1.cheer()
    
    func printNames(list:[Human]) {
        for p in list {
            print((p.name ?? "名無し") + "さん")
        }
    }
    
    let mobs : [Human] = [ Mob(), Mob(), Mob() ]
    printNames(list: mobs)
}
