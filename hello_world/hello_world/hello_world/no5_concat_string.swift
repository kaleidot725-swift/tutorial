//
//  No5.swift
//  hello_world
//
//  Created by kaleidot725 on 2020/11/03.
//

import Foundation

func no5() {
    // No5 文字列の使い方
    let firstName = "ウメハラ"
    let msg = "こんにちは" + firstName + "さん。"
    print(msg)
    
    let lastName = "ダイゴ"
    let fullmsg = "こんにちは" + firstName + lastName + "さん。"
    print(fullmsg)
    

    // += で定義した変数に結合できる
    var homework = "理科"
    homework += "「夜空の観察」"
    print(homework)
}
