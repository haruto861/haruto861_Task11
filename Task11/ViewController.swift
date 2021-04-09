//
//  ViewController.swift
//  Task11
//
//  Created by 松島悠人 on 2021/04/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var selectedPrefectureLabel: UILabel!

    @IBAction private func unwindsSegue(segue: UIStoryboardSegue) {
        guard let selectionVC = segue.source as? SelectionTablewViewController else { return }
        selectedPrefectureLabel.text = selectionVC.selectedPrefecture
    }
}
