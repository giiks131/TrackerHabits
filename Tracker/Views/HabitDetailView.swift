//
//  HabitDetailView.swift
//  Tracker
//
//  Created by Aleksandr Shapovalov on 27/03/23.
//

import UIKit

class HabitDetailView: UIView {

    private let scrollView = UIScrollView()

    private lazy var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.text = "Name"
        nameLabel.textColor = .black
        nameLabel.numberOfLines = 1
//        nameLabel.sizeToFit()

        return nameLabel
    }()

    private lazy var nameTextField: UITextField = {
        let nameTextField = UITextField()
        nameTextField.autocorrectionType = .no
        nameTextField.backgroundColor = .white
        nameTextField.leftViewMode = .always
        nameTextField.textColor = UIColor.blue

        return nameTextField
    }()

    private lazy var colorLabel: UILabel = {
        let colorLabel = UILabel()
        colorLabel.text = "Color"
        colorLabel.textColor = .black
        colorLabel.numberOfLines = 1

        return colorLabel
    }()

    private lazy var colorPicker: UIButton = {
        let colorPicker = UIButton()
        colorPicker.frame = CGRect(x: 0, y: 0, width: 32, height: 32)
        colorPicker.layer.cornerRadius = 16


        return colorPicker
    }()

    private lazy var timeLabel: UILabel = {
        let timeLabel = UILabel()
        timeLabel.text = "Time"
        timeLabel.textColor = .black
        timeLabel.numberOfLines = 1

        return timeLabel
    }()

    private lazy var timePicker: UIDatePicker = {
        let timePicker = UIDatePicker()

        return timePicker
    }()

    
}
