//
//  UIButton+Extension.swift
//  IDSwiftExtensions
//
//  Created by Island on 17/2/21.
//
//

import UIKit

public extension UIButton {
    /** Initialize UIButton with an attributedText for normal state */
    public convenience init(attributedTitle: NSAttributedString) {
        self.init()
        setAttributedTitle(attributedTitle, for: .normal)
    }
}
