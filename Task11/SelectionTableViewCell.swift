//
//  SelectionTableViewCell.swift
//  Task11
//
//  Created by 松島悠人 on 2021/04/08.
//

import UIKit


protocol RegiserableCell {
    // 取り決めを設定する
    // 読み込み専用
    static var nibName: String { get }
    static var reuseIdetifier: String { get }
}

extension UITableView {
    // ここのコードがどういう動作をしているのかわからない
    // ジェネリクスのwhere?　→ 引数として受け取るものをRegisterbleCellに限定
    // <Cell: 引数の型>で引数の型を定義している
    // where Cell: RegiserableCell 型cellはregisterableに準拠していなければならない　プロトコルに適合しない型の使用を排除している。プロトコルに適合する型でありさせすればこの関数が利用可能であることを示している
    func register<Cell: UITableViewCell>(_cell : Cell.Type) where Cell: RegiserableCell {
        register(UINib(nibName: Cell.nibName, bundle: nil),
                 forCellReuseIdentifier: Cell.reuseIdetifier
        )
    }
}

// プロトコルに準拠させる
class SelectionTableViewCell: UITableViewCell, RegiserableCell {

    @IBOutlet private weak var prefectureNameLabel: UILabel!

    static var nibName: String {
        className
    }

    static var reuseIdetifier: String {
        className
    }
    // selectiontablewviewcell自体をclassNameに代入する
     static var className : String {
        return String(describing: self)
    }
    // reuseidetifier(Cellのidに該当する部分)にclassNameを代入
    static var reuseIdentifier: String {
        className
    }

    func configure(prefectureName: String) {
        prefectureNameLabel.text = prefectureName
    }
}
