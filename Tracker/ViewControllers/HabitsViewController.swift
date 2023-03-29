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
                navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(plus))
        setupLayout()

    }

    override func viewWillAppear(_ animated: Bool) {
        habitsCollectionView.dataSource = self
        habitsCollectionView.delegate = self
        habitsCollectionView.reloadData()
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

    @objc func plus() {

    }
}

extension HabitsViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var returnValue = Int()

        if section == 0 {
            returnValue = 1
        } else if section == 1 {
            returnValue = 10
            //            from store
        }
        return returnValue
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        if indexPath.section == 0 {
            let cell = habitsCollectionView.dequeueReusableCell(withReuseIdentifier: ProgressCollectionViewCell.id, for: indexPath) as! ProgressCollectionViewCell
            // update progress
            return cell
        } else {
            let cell = habitsCollectionView.dequeueReusableCell(withReuseIdentifier: HabitCollectionViewCell.id, for: indexPath) as! HabitCollectionViewCell

            return cell
        }
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        var returnValue = CGSize()
        let paddingWidth = collectionView.frame.width - 32

        if indexPath.section == 0 {
            returnValue = CGSize(width: paddingWidth, height: 60)
        } else {
            returnValue = CGSize(width: paddingWidth, height: 130)
        }
        return returnValue
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 12
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if section == 0 {
            return UIEdgeInsets(top: 22, left: 16, bottom: 18, right: 16)
        } else {
           return UIEdgeInsets(top: 0, left: 16, bottom: 12, right: 16)
        }
    }
}
