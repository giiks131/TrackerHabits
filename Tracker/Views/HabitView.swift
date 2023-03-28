//
//  HabitsView.swift
//  Tracker
//
//  Created by Aleksandr Shapovalov on 27/03/23.
//

import UIKit
import SnapKit

class HabitView: UIView {

    private lazy var habitCollectionBackView: UIView = {
        let habitCollectionBackView = UIView()
        habitCollectionBackView.layer.cornerRadius = 8
        habitCollectionBackView.backgroundColor = .white

        return habitCollectionBackView
    }()

    private lazy var habitCollectionTitle: UILabel = {
        let habitCollectionTitle = UILabel()
        habitCollectionTitle.textColor = UIColor(red: 0.114, green: 0.702, blue: 0.133, alpha: 1)
        habitCollectionTitle.text = "Task"
        habitCollectionTitle.font = .systemFont(ofSize: 17)
        habitCollectionTitle.numberOfLines = 2

        return habitCollectionTitle
    }()

    private lazy var habitCollectionTimeLabel: UILabel = {
        let habitCollectionTimeLabel = UILabel()
        habitCollectionTimeLabel.textColor = UIColor(red: 0.682, green: 0.682, blue: 0.698, alpha: 1)
        habitCollectionTimeLabel.text = "Everyday at 7AM"
        habitCollectionTimeLabel.font = .systemFont(ofSize: 12)
        habitCollectionTimeLabel.numberOfLines = 1

        return habitCollectionTimeLabel
    }()

    private lazy var habitCollectionCountLabel: UILabel = {
        let habitCollectionCountLabel = UILabel()
        habitCollectionCountLabel.textColor = UIColor(red: 0.557, green: 0.557, blue: 0.576, alpha: 1)
        habitCollectionCountLabel.text = "Count: 5"
        habitCollectionCountLabel.font = .systemFont(ofSize: 13)
        habitCollectionCountLabel.numberOfLines = 1

        return habitCollectionCountLabel
    }()

    private lazy var habitTrackButton: UIButton = {
        var config = UIButton.Configuration.filled()
        config.cornerStyle = .medium

        let habitTrackButton = UIButton(configuration: config)

        return habitTrackButton
    }()

    private lazy var habitCheckmarkImageView: UIImageView = {
        let habitCheckmarkImageView = UIImageView(image: UIImage(systemName: "checkmark"))
        habitCheckmarkImageView.tintColor = .white

        return habitCheckmarkImageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension HabitView {

    func setupLayout() {
        self.addSubview(habitCollectionBackView)
        habitCollectionBackView.addSubview(habitCollectionTitle)
        habitCollectionBackView.addSubviews([habitCollectionTitle, habitCollectionTimeLabel, habitCollectionCountLabel, habitTrackButton, habitCheckmarkImageView])

        habitCollectionBackView.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
}
