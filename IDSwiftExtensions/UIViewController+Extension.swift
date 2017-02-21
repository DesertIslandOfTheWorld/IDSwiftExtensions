//
//  UIViewController+Extension.swift
//  IDSwiftExtensions
//
//  Created by Island on 17/2/21.
//
//

import UIKit

public extension UIViewController {
    /** Configure the navigation bar with only title */
    public func configureNavigationBar(title: String) {
        configureNavigationBar(title: title, leftImage: nil, rightAttributedString: nil)
    }
    /** Configure the navigation bar with title and leftImage */
    public func configureNavigationBar(title: String, leftImage: UIImage) {
        configureNavigationBar(title: title, leftImage: leftImage, rightAttributedString: nil)
    }
    /** Configure the navigation bar with title and rightImage */
    public func configureNavigationBar(title: String, rightImage: UIImage) {
        configureNavigationBar(title: title, leftImage: nil, rightImage: rightImage)
    }
    /** Configure the navigation bar with title and rightAttributedString */
    public func configureNavigationBar(title: String, rightAttributedString: NSAttributedString) {
        configureNavigationBar(title: title, leftImage: nil, rightAttributedString: rightAttributedString)
    }
    /** Configure the navigation bar with title, optional leftImage and optional rightAttributedString */
    public func configureNavigationBar(title: String, leftImage: UIImage?, rightAttributedString: NSAttributedString?) {
        self.title = title
        if let leftImage = leftImage {
            navigationItem.leftBarButtonItem = UIBarButtonItem(image: leftImage, style: .done, target: self, action: #selector(leftBarButtonItemClicked(item:)))
        }
        if let rightAttributedString = rightAttributedString {
            let rightButton = UIButton(attributedTitle: rightAttributedString)
            rightButton.sizeToFit()
            rightButton.addTarget(self, action: #selector(rightBarButtonItemClicked(item:)), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightButton)
        }
    }
    /** Configure the navigation bar with title, optional leftImage and optional rightAttributedString */
    public func configureNavigationBar(title: String, leftImage: UIImage?, rightImage: UIImage?) {
        self.title = title
        if let leftImage = leftImage {
            navigationItem.leftBarButtonItem = UIBarButtonItem(image: leftImage, style: .done, target: self, action: #selector(leftBarButtonItemClicked(item:)))
        }
        if let rightImage = rightImage {
            navigationItem.rightBarButtonItem = UIBarButtonItem(image: rightImage, style: .done, target: self, action: #selector(rightBarButtonItemClicked(item:)))
        }
    }
    // MARK: - 控制事件
    public func leftBarButtonItemClicked(item: UIBarButtonItem) {
        _ = navigationController?.popToRootViewController(animated: true)
    }
    public func rightBarButtonItemClicked(item: UIBarButtonItem) {
        print("rightBarButtonItemClicked")
    }
}
