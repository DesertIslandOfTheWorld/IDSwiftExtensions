//
//  UIImageView+Extension.swift
//  IDSwiftExtensions
//
//  Created by Island on 17/2/21.
//
//

import UIKit

public extension UIImageView {
    /// 创建一个包含图片的 ImageView
    convenience init(imageNamed: String) {
        self.init()
        image = UIImage(named: imageNamed)
    }
}
