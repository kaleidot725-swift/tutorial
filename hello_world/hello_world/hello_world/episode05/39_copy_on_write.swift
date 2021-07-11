//
//  39_copy_on_write.swift
//  hello_world
//
//  Created by kaleidot725 on 2021/07/10.
//

import Foundation

// Swift には値型のデータと参照型のデータある
// 参照型のデータは Swift ではインスタンスとクロージャーしか無い
// それほかの整数や実数、配列や構造体などは値型のデータになる

// 値データを引数にわたす場合に複製しつづけるのは効率が悪い
// なので Swift では値データを渡すときには値へのポインタに相当するものを渡して、
// データに変更がない限りは1つのデータを共有して参照する
// もとのデータ側、あるいは渡した先で書き込みが発生した時点で、データの複製を作成する

// このように複製位が必要になるまではできるだけデータを共有してコストを低減する手法を Copy On Write と呼ばれる。