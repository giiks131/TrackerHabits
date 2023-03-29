//
//  ProgressView.swift
//  Tracker
//
//  Created by Aleksandr Shapovalov on 28/03/23.
//

import UIKit
import SnapKit

class ProgressView: UIView {

    private lazy var progressBackView: UIView = {
        let progressBackView = UIView()
        progressBackView.layer.cornerRadius = 8
        progressBackView.backgroundColor = .white

        return progressBackView
    }()

    private lazy var progressTitle: UILabel = {
        let progressTitle = UILabel()
        progressTitle.textColor = .systemGray
        progressTitle.text = "You can do it!"
        progressTitle.font = .systemFont(ofSize: 14)

        return progressTitle
    }()

    private lazy var progressPercentage: UILabel = {
        let progressPercentage = UILabel()
        progressPercentage.text = "75%"
        progressPercentage.textColor = .systemGray
        progressPercentage.font = .systemFont(ofSize: 14)

        return progressPercentage
    }()

    private lazy var progressBarView: UIProgressView = {
        let progressBarView = UIProgressView()
        progressBarView.progressViewStyle = .bar
        progressBarView.trackTintColor = UIColor(red: 0.847, green: 0.847, blue: 0.847, alpha: 1)
        progressBarView.progressTintColor = .purple
        progressBarView.layer.cornerRadius = 8
        progressBarView.progress = 0.75
        //progressBarView.progress = from store

        return progressBarView
    }()

        //update progress method

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ProgressView {
    func setupLayout() {
        self.addSubview(progressBackView)
        progressBackView.addSubviews([progressTitle, progressPercentage, progressBarView])

        progressBackView.snp.makeConstraints { make in
            make.size.equalToSuperview()
        }

        progressTitle.snp.makeConstraints { make in
            make.top.leading.equalToSuperview().offset(10)
        }

        progressPercentage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().inset(10)
        }

        progressBarView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(10)
            make.trailing.bottom.equalToSuperview().inset(10)
            make.height.equalTo(7)
        }
    }
}
