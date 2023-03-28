//
//  ViewController.swift
//  Tracker
//
//  Created by Aleksandr Shapovalov on 27/03/23.
//

import UIKit
import SnapKit

class HabitsViewController: UIViewController {
    private let viewModel = HabitsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = "Today"
        navigationController?.navigationBar.tintColor = .purple
        let navigationBarAppearance = UINavigationBarAppearance()
        navigationBarAppearance.shadowColor = UIColor(red: 0.235, green: 0.235, blue: 0.263, alpha: 0.29)
        navigationController?.navigationBar.scrollEdgeAppearance = navigationBarAppearance
//        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector())
        setupLayout()

    }

    override func viewWillAppear(_ animated: Bool) {
        self.habitsCollectionView.reloadData()
    }

    private lazy var habitsCollectionView: UICollectionView = {
        let collectionViewLayout = UICollectionViewFlowLayout()
        collectionViewLayout.scrollDirection = .vertical

        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
        collectionView.backgroundColor = UIColor(red: 0.949, green: 0.949, blue: 0.969, alpha: 1)
        collectionView.register(HabitCollectionViewCell.self, forCellWithReuseIdentifier: HabitCollectionViewCell.id)
        collectionView.register(ProgressCollectionViewCell.self, forCellWithReuseIdentifier: ProgressCollectionViewCell.id)

        return collectionView
    }()

    private func setupLayout() {
        view.addSubview(habitsCollectionView)

        habitsCollectionView.snp.makeConstraints { make in
//            make.center.leading.trailing.equalToSuperview()
            make.edges.equalToSuperview()
        }

    }
}

