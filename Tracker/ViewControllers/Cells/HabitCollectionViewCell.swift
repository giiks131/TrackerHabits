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

    override init(frame: CGRect) {
        super.init(frame: frame)
//        habitView = HabitView()
        setupLayout()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension HabitCollectionViewCell {
    func setupLayout() {
        habitView = HabitView()
//        guard habitView == nil else { return }
        
        self.contentView.addSubview(habitView!)
        
        habitView?.snp.makeConstraints({ make in
            make.edges.equalToSuperview()
        })
    }
}
