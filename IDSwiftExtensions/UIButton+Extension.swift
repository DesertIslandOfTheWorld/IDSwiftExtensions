//
//  UIButton+Extension.swift
//  IDSwiftExtensions
//
//  Created by Island on 17/2/21.
//
//

import UIKit

public extension UIButton {
    /** Initialize UIButton with an attributedText */
    public convenience init(attributedTitle: NSAttributedString, for state: UIControlState) {
        self.init()
        setAttributedTitle(attributedTitle, for: state)
    }
    /** Initialize UIButton with an title and titleColor */
    public convenience init(title: String, titleColor: UIColor, for state: UIControlState) {
        self.init()
        setTitle(title, for: state)
        setTitleColor(titleColor, for: state)
    }
}
