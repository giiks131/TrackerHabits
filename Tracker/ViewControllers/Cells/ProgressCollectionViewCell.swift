//
//  ProgressCollectionViewCell.swift
//  Tracker
//
//  Created by Aleksandr Shapovalov on 28/03/23.
//

import UIKit

class ProgressCollectionViewCell: UICollectionViewCell {
    static let id = "ProgressCollectionViewCell"

    private var progressView: ProgressView?

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension ProgressCollectionViewCell {
    func setupLayout() {
        progressView = ProgressView()
        self.contentView.addSubview(progressView!)

        progressView?.snp.makeConstraints({ make in
            make.edges.equalToSuperview()
        })
    }
}
