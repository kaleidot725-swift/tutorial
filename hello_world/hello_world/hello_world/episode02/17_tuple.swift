//
//  17_tuple.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/02/14.
//

import Foundation

func no17() {
    func BMI(tall: Double, weight: Double) -> (Double, Double) {
        let ideal = 22.0
        let t2 = tall * tall / 10000.0
        let index = weight / t2
        return (index, ideal * t2)
    }

    let m : (String, Int) = ("monkey.jpg", 161_022)
    print("String \(m.0) Int \(m.1)")

    // cat と img は同じ型なので代入できる
    let cat = ("cat.jpg", 1024, 768)
    let img : (String, Int, Int) = cat
    print("String \(img.0) Int \(img.1) Int \(img.2)")
    
    // タプルから各変数に代入できる
    let photo = ("tiger.jpg", 640, 800)
    let (file, width, height) = photo
    print("File \(file) Width \(width) Height \(height)")

    // タプルを返す関数も定義できる
    let bmi = BMI(tall:177.0, weight:80.0)
    print("BMI ", bmi)
    
    // タプルにはキーワードをつけることができる
    // キーワードをつけるとキーワードがないタプルとの代入ができなくなるので注意が必要
    // 代入はキーワードをつけたもの同士、キーワードがないタプル同士でした代入ができない
    // だがキャストはできるのでキャストをしてからだとキーワードありやなしに変換して代入できる。
    let labelPhoto = (file:"tiger.jpg", width:640, height:800)
    print("File \(labelPhoto.file) Width \(labelPhoto.width) Height \(labelPhoto.height)")
    
    // 同じ要素数で同じようそのタプルであれば比較できる、ちなみに要素数は最大6個という制限がある。
    print((7 , 29, "bee") == (7, 31 - 2, "be" + "e"))
    print((31, 10, "miia") > (31, 1, "suu"))
    print((1, 18, 0, 10000) > (1, 18, 2, 99))
}
