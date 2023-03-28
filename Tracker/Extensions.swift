//
//  Extensions.swift
//  Tracker
//
//  Created by Aleksandr Shapovalov on 28/03/23.
//

import UIKit

extension UIView {
    func addSubviews(_ subviews: [UIView]) {
        subviews.forEach {
            addSubview($0)
        }
    }

    func addSubviews(_ subviews: UIView...) {
        addSubviews(subviews)
    }
}
