//
//  UIScreen+Extension.swift
//  IDSwiftExtensions
//
//  Created by Island on 17/2/21.
//
//

import UIKit

public extension UIScreen {
    /// 屏幕宽度
    static var width: CGFloat {
        return main.bounds.width
    }
    /// 屏幕高度
    static var height: CGFloat {
        return main.bounds.height
    }
}
