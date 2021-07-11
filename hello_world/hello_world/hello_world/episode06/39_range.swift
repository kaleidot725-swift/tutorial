//
//  39_range.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/07/11.
//

import Foundation

func no39() {
    let closedRangeInt = 0 ... 9 // 上限値を含める
    print(closedRangeInt)
    print(closedRangeInt.lowerBound)
    print(closedRangeInt.upperBound)
    print(closedRangeInt.contains(8))
    print(closedRangeInt.contains(9))
    
    let clsoedRangeString = "a" ... "z"
    print(clsoedRangeString)
    print(clsoedRangeString.lowerBound)
    print(clsoedRangeString.upperBound)
    print(clsoedRangeString.contains("a"))

    let rangeDouble = 2.5 ..< 4.0 // 上限値を含めない
    print(rangeDouble)
    print(rangeDouble.lowerBound)
    print(rangeDouble.upperBound)
    print(rangeDouble.contains(3.9))
    print(rangeDouble.contains(4.0))
    
    let partialRangeFromInt = 16...
    print(partialRangeFromInt)
    print(partialRangeFromInt.lowerBound)
    print(partialRangeFromInt.contains(15))
    print(partialRangeFromInt.contains(16))
    print(partialRangeFromInt.contains(17))
    
    let partialRangeThroughUInt = ...UInt(16)
    print(partialRangeThroughUInt)
    print(partialRangeThroughUInt.upperBound)
    print(partialRangeThroughUInt.contains(15))
    print(partialRangeThroughUInt.contains(16))
    print(partialRangeThroughUInt.contains(17))
    
    let partialRangeUpToFloat = ..<Float(1.0)
    print(partialRangeUpToFloat)
    print(partialRangeUpToFloat.upperBound)
    print(partialRangeUpToFloat.contains(0.9))
    print(partialRangeUpToFloat.contains(1.0))
    print(partialRangeUpToFloat.contains(1.1))
}
