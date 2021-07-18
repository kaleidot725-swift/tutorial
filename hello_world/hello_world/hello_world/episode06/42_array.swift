//
//  42_array.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/07/18.
//

import Foundation

func no42() {
    func sort() {
        // 配列に対する操作は、配列を変更するものと、配列を変更せずに新しい配列を返すものがある
        var numbers = [1, 3, 2, 4, 6, 5, 9, 0]
        let sorted = numbers.sorted()
        
        print("sorted")
        print(numbers)
        print(sorted)
        
        print("sort")
        numbers.sort()
        print(numbers)
    }
    
    func subArray() {
        // 春の箇所に別の配列を差し込む
        var s = ["春", "夏", "秋", "冬"]
        s[0...0] = ["初春", "仲春", "晩春"]
        print(s)
        
        s[1...3] = ["花見", "梅雨", "夏休み"]
        print(s)
        
        s[3...4] = []
        print(s)
        
        // 部分配列を取得できる
        var days = ["日", "月", "火", "水", "木", "金", "土"]
        print(days[3...5])
        print(days[...3])
        print(days[5...])
        print(days[...])
        
        // 部分を切り取った場合には ArraySlice　で返される
        // ArraySlice は実行効率化のためにもとの配列を部分的にアクセスするための型になる
        // でも別の配列として扱われるので各配列で変更を実行しても問題はない
        let sub = days[2..<5]
        print(sub.count)
        print(sub.startIndex)
        print(sub[2])
        print(sub[4])
        
        // ArraySlice ではなく Array 型が必要なときには Array を以下の処理で生成する
        print(sub[2])
        let subarray = [String](sub)
        print(subarray[0])
    }
    
    func initialize() {
        var a : Array<Int> = [ 2, 5, 8, 11, 7 ]
        var s = Array<String>()
        print(a)
        print(s)
        
        let seq = [Int](0 ..< 10)
        let chars = [Character]("メイドインSwift")
        print(chars)
        
        var data = [Double](repeating:0.0, count:10)
        print(data)
        
        var lash = Array(repeating: "無駄", count: 100)
        print(lash)
    }
    
    func propertyAndMethod() {
        var s = [ 3, 5, 8, 11]
        s.append(contentsOf: stride(from: 15, through: 40, by: 5))
        print(s)
        
        let t = s.prefix(6).reversed()
        print(t)
        print(t + [0, 1])
    }
    
    func compare() {
        // 配列を比較する
        // 要素数が等しく、並び順が等しいときに true になる
        let a = [1, 2]
        let b = [2, 1]
        print(a == b)
        print(a + [1] == [1] + b)
    }
    
    sort()
    subArray()
    initialize()
    propertyAndMethod()
    compare()
}
