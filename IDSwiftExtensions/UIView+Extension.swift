//
//  UIView+Extension.swift
//  IDSwiftExtensions
//
//  Created by Island on 17/2/21.
//
//

import UIKit

public extension UIView {
    /// 初始化一个带背景的 view
    convenience init(backgroundColor color: UIColor) {
        self.init()
        backgroundColor = color
    }
    /// 初始化一个带背景 和 圆角 的 view
    convenience init(backgroundColor color: UIColor, cornerRadius radius: CGFloat) {
        self.init()
        backgroundColor = color
        layer.cornerRadius = radius
        layer.masksToBounds = true
    }
}
