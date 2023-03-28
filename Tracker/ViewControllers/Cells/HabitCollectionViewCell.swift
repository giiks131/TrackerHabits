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


//class HabitCollectionViewCell: UICollectionViewCell {
//
//    static let id = "HabitCollectionViewCell"
//
//    private lazy var habitCollectionBackView: UIView = {
//        let habitCollectionBackView = UIView()
//        habitCollectionBackView.layer.cornerRadius = 8
//        habitCollectionBackView.backgroundColor = .lightGray
//
//        return habitCollectionBackView
//    }()
//
//    private lazy var habitCollectionTitle: UILabel = {
//        let habitCollectionTitle = UILabel()
//        habitCollectionTitle.textColor = UIColor(red: 0.114, green: 0.702, blue: 0.133, alpha: 1)
//        habitCollectionTitle.text = "Task"
//        habitCollectionTitle.font = .systemFont(ofSize: 17)
//        habitCollectionTitle.numberOfLines = 2
//
//        return habitCollectionTitle
//    }()
//
//    private lazy var habitCollectionTimeLabel: UILabel = {
//        let habitCollectionTimeLabel = UILabel()
//        habitCollectionTimeLabel.textColor = UIColor(red: 0.682, green: 0.682, blue: 0.698, alpha: 1)
//        habitCollectionTimeLabel.text = "Everyday at 7AM"
//        habitCollectionTimeLabel.font = .systemFont(ofSize: 12)
//        habitCollectionTimeLabel.numberOfLines = 1
//
//        return habitCollectionTimeLabel
//    }()
//
//    private lazy var habitCollectionCountLabel: UILabel = {
//        let habitCollectionCountLabel = UILabel()
//        habitCollectionCountLabel.textColor = UIColor(red: 0.557, green: 0.557, blue: 0.576, alpha: 1)
//        habitCollectionCountLabel.text = "Count: 5"
//        habitCollectionCountLabel.font = .systemFont(ofSize: 13)
//        habitCollectionCountLabel.numberOfLines = 1
//
//        return habitCollectionCountLabel
//    }()
//
//    private lazy var habitTrackButton: UIButton = {
//        var config = UIButton.Configuration.filled()
//        config.cornerStyle = .medium
//
//        let habitTrackButton = UIButton(configuration: config)
//
//        return habitTrackButton
//    }()
//
//    private lazy var habitCheckmarkImageView: UIImageView = {
//        let habitCheckmarkImageView = UIImageView(image: UIImage(systemName: "checkmark"))
//        habitCheckmarkImageView.tintColor = .white
//
//        return habitCheckmarkImageView
//    }()
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//
//        setupLayout()
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}

//private extension HabitCollectionViewCell {
//
//    func setupLayout() {
//        self.addSubview(habitCollectionBackView)
////        habitCollectionBackView.addSubview(habitCollectionTitle)
//        habitCollectionBackView.addSubviews([habitCollectionTitle, habitCollectionTimeLabel, habitCollectionCountLabel, habitTrackButton, habitCheckmarkImageView])
//
//        habitCollectionBackView.snp.makeConstraints { make in
//            make.size.equalToSuperview()
//        }
//
//        habitCollectionTitle.snp.makeConstraints { make in
//            make.trailing.leading.equalToSuperview()
//        }
//
//        habitTrackButton.snp.makeConstraints { make in
//            make.trailing.equalToSuperview().offset(-26)
//            make.centerY.equalToSuperview()
//            make.width.height.equalTo(38)
//        }
//    }
//}


//private extension HabitCollectionViewCell {
//
//    func setupLayout() {
//        contentView.addSubview(habitCollectionBackView)
////        habitCollectionBackView.addSubview(colorLabel)
//        habitCollectionBackView.addSubview(habitCollectionTitle)
//        habitCollectionBackView.addSubview(habitCollectionTimeLabel)
//        habitCollectionBackView.addSubview(habitCollectionCountLabel)
//        habitCollectionBackView.addSubview(habitTrackButton)
//        habitCollectionBackView.addSubview(habitCheckmarkImageView)
//        contentView.layer.masksToBounds = true
//
//
//        let constraints = [
//            habitCollectionBackView.topAnchor.constraint(equalTo: contentView.topAnchor),
//            habitCollectionBackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
//            habitCollectionBackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
//            habitCollectionBackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
//
//            habitCollectionTitle.heightAnchor.constraint(lessThanOrEqualToConstant: 44),
//            habitCollectionTitle.widthAnchor.constraint(lessThanOrEqualToConstant: 220),
//            habitCollectionTitle.topAnchor.constraint(equalTo: habitCollectionBackView.topAnchor, constant: 20),
//            habitCollectionTitle.leadingAnchor.constraint(equalTo: habitCollectionBackView.leadingAnchor, constant: 20),
//
////            habitCollectionTimeLabel.heightAnchor.constraint(lessThanOrEqualToConstant: 44),
//            habitCollectionTimeLabel.topAnchor.constraint(equalTo: habitCollectionTitle.bottomAnchor, constant: 4),
//            habitCollectionTimeLabel.leadingAnchor.constraint(equalTo: habitCollectionBackView.leadingAnchor, constant: 20),
//
//            habitCollectionCountLabel.topAnchor.constraint(equalTo: habitCollectionBackView.topAnchor, constant: 92),
//            habitCollectionCountLabel.leadingAnchor.constraint(equalTo: habitCollectionBackView.leadingAnchor, constant: 20),
//
//            habitTrackButton.widthAnchor.constraint(equalToConstant: 38),
//            habitTrackButton.heightAnchor.constraint(equalToConstant: 38),
//            habitTrackButton.trailingAnchor.constraint(equalTo: habitCollectionBackView.trailingAnchor, constant: -26),
//            habitTrackButton.centerYAnchor.constraint(equalTo: habitCollectionBackView.centerYAnchor),
//
//            habitCheckmarkImageView.centerXAnchor.constraint(equalTo: habitTrackButton.centerXAnchor),
//            habitCheckmarkImageView.centerYAnchor.constraint(equalTo: habitTrackButton.centerYAnchor),
//
////            colorLabel.leadingAnchor.constraint(equalTo: habitCollectionBackView.leadingAnchor),
////            colorLabel.topAnchor.constraint(equalTo: habitCollectionBackView.topAnchor)
//        ]
//        NSLayoutConstraint.activate(constraints)
//
//    }
//}
