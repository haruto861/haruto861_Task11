//
//  SelectionTableViewCell.swift
//  Task11
//
//  Created by 松島悠人 on 2021/04/08.
//

import UIKit

protocol RegisterableCell {
    static var nibName: String { get }
    static var reuseIdentifier: String { get }
}

extension UITableView {
    func register<Cell: UITableViewCell>(_ cell: Cell.Type) where Cell: RegisterableCell {
        register(
            UINib(nibName: cell.nibName, bundle: nil),
            forCellReuseIdentifier: cell.reuseIdentifier
        )
    }
}

class SelectionTableViewCell: UITableViewCell, RegisterableCell {
    @IBOutlet private weak var prefectureNameLabel: UILabel!

    private static var className: String {
        return String(describing: self)
    }

    static var nibName: String {
        className
    }

    static var reuseIdentifier: String {
        className
    }

    func configure(prefectureName: String) {
        prefectureNameLabel.text = prefectureName
    }
}
