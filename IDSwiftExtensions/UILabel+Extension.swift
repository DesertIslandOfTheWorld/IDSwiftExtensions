//
//  UILabel+Extension.swift
//  IDSwiftExtensions
//
//  Created by Island on 17/2/21.
//
//

import UIKit



public extension UILabel {
    /// 创建一个带边框 和 圆角的 Label
    convenience init(font: UIFont, textColor: UIColor, borderWidth: CGFloat, cornerRadius: CGFloat) {
        self.init()
        self.layer.borderColor = textColor.cgColor
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = cornerRadius
        self.font = font
        self.textColor = textColor
    }
    /// 创建一个 label
    convenience init(font: UIFont, textColor: UIColor) {
        self.init()
        self.font = font
        self.textColor = textColor
    }
    /// 创建一个带文本 Label
    convenience init(text: String, textColor: UIColor, font: UIFont) {
        self.init()
        self.text = text
        self.textColor = textColor
        self.font = font
    }
}
