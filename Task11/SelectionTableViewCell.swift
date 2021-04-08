//
//  SelectionTableViewCell.swift
//  Task11
//
//  Created by 松島悠人 on 2021/04/08.
//

import UIKit

class SelectionTableViewCell: UITableViewCell {

    @IBOutlet private weak var prefectureNameLabel: UILabel!

    static var toString: String {
        return String(describing: self)
    }
    static let id = SelectionTableViewCell.toString

    static func nib() -> UINib {
        return UINib(nibName: SelectionTableViewCell.id, bundle: nil)
    }
    func configure(prefectureName: String) {
        prefectureNameLabel.text = prefectureName
    }
}
