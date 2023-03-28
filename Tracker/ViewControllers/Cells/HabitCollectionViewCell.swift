//
//  HabitCollectionViewCell.swift
//  Tracker
//
//  Created by Aleksandr Shapovalov on 28/03/23.
//

import UIKit
import SnapKit

class HabitCollectionViewCell: UICollectionViewCell {
    static let id = "HabitCollectionViewCell"

    private var habitView: HabitView?

}

extension HabitCollectionViewCell {
    func setupLayout() {
        guard habitView == nil else { return }

        self.contentView.addSubview(habitView!)

        habitView?.snp.makeConstraints({ make in
            make.edges.equalToSuperview()
        })
    }
}
