//
//  UIButton+Extension.swift
//  IDSwiftExtensions
//
//  Created by Island on 17/2/21.
//
//

import UIKit

extension UIButton {
    /** Initialize UIButton with an attributedText for normal state */
    convenience init(attributedTitle: NSAttributedString) {
        self.init()
        setAttributedTitle(attributedTitle, for: .normal)
    }
}
