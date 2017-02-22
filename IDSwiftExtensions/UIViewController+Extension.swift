//
//  UIViewController+Extension.swift
//  IDSwiftExtensions
//
//  Created by Island on 17/2/21.
//
//
import UIKit

public extension UIViewController {
    // MARK: - leftTitle
    /** Set the title only. */
    public func configureNavigationBar(title: String) {
        self.title = title
    }
    // MARK: - leftTitle
    /** Set the title and leftTitle(default font and color). */
    public func configureNavigationBar(title: String, leftTitle: String) {
        configureNavigationBar(title: title, leftTitle: leftTitle, target: nil, action: nil)
    }
    /** Set the title and leftTitle(custom color). */
    public func configureNavigationBar(title: String, leftTitle: String, leftTitleColor: UIColor) {
        navigationItem.leftBarButtonItem = barButtonItem(title: title, titleColor: leftTitleColor, target: nil, action: nil)
    }
    /** Set the title、leftTitle（default font and color）、action（optional） and target（optional）. */
    public func configureNavigationBar(title: String, leftTitle: String, target: Any?, action: Selector?) {
        self.title = title
        if let target = target, let action = action {
            navigationItem.leftBarButtonItem = UIBarButtonItem(title: leftTitle, style: .done, target: target, action: action)
        } else {
            navigationItem.leftBarButtonItem = UIBarButtonItem(title: leftTitle, style: .done, target: self, action: #selector(leftBarButtonItemClicked(item:)))
        }
    }
    /** Set the title、leftTitle（default font and color）、action（optional） and target（optional）. */
    public func configureNavigationBar(title: String, leftTitle: String, leftTitleColor: UIColor, target: Any?, action: Selector?) {
        self.title = title
        let leftButton = UIButton(title: leftTitle, titleColor: leftTitleColor, for: .normal)
        leftButton.sizeToFit()
        if let target = target, let action = action {
            leftButton.addTarget(target, action: action, for: .touchUpInside)
        } else {
            leftButton.addTarget(self, action: #selector(leftBarButtonItemClicked(item:)), for: .touchUpInside)
        }
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftButton)
    }
    // MARK: - leftAttributedTitle
    /** Set the title and leftTitle(custom font and color). */
    public func configureNavigationBar(title: String, leftAttributedString: NSAttributedString) {
        configureNavigationBar(title: title, leftAttributedString: leftAttributedString, target: nil, action: nil)
    }
    /** Set the title、leftTitle(custom font and color)、action（optional） and target（optional）. */
    public func configureNavigationBar(title: String, leftAttributedString: NSAttributedString, target: Any?, action: Selector?) {
        self.title = title
        let leftButton = UIButton(attributedTitle: leftAttributedString, for: .normal)
        leftButton.sizeToFit()
        if let target = target, let action = action {
            leftButton.addTarget(target, action: action, for: .touchUpInside)
        } else {
            leftButton.addTarget(self, action: #selector(leftBarButtonItemClicked(item:)), for: .touchUpInside)
        }
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: leftButton)
    }
    // MARK: - leftImage
    /** Set the title and leftImage. */
    public func configureNavigationBar(title: String, leftImageName: String) {
        configureNavigationBar(title: title, leftImageName: leftImageName, target: nil, action: nil)
    }
    /** Set the title、leftImage、action（optional） and target（optional）. */
    public func configureNavigationBar(title: String, leftImageName: String, target: Any?, action: Selector?) {
        self.title = title
        let leftOriginalImage = UIImage(named: leftImageName)?.withRenderingMode(.alwaysOriginal) ?? UIImage()
        if let target = target, let action = action {
            navigationItem.leftBarButtonItem = UIBarButtonItem(image: leftOriginalImage, style: .done, target: target, action: action)
        } else {
            navigationItem.leftBarButtonItem = UIBarButtonItem(image: leftOriginalImage, style: .done, target: self, action: #selector(leftBarButtonItemClicked(item:)))
        }
    }
    /** Set the rightTitle（default font and color）、action and target. */
    public func configureNavigationBar(rightTitle: String, target: Any, action: Selector) {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: rightTitle, style: .done, target: target, action: action)
    }
    // MARK: - rightTitle
    /** Set the rightTitle（custom color）、action and target. */
    public func configureNavigationBar(rightTitle: String, rightTitleColor: UIColor, target: Any, action: Selector) {
        navigationItem.rightBarButtonItem = barButtonItem(title: rightTitle, titleColor: rightTitleColor, target: target, action: action)
    }
    // MARK: - rightAttributedTitle
    /** Set the rightTitle（custom font and color）、action and target. */
    public func configureNavigationBar(rightAttributedString: NSAttributedString, target: Any, action: Selector) {
        let rightButton = UIButton(attributedTitle: rightAttributedString, for: .normal)
        rightButton.sizeToFit()
        rightButton.addTarget(target, action: action, for: .touchUpInside)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightButton)
    }
    // MARK: - rightImage
    /** Set the rightImage、action and target. */
    public func configureNavigationBar(rightImageName: String, target: Any, action: Selector) {
        let rightOriginalImage = UIImage(named: rightImageName)?.withRenderingMode(.alwaysOriginal) ?? UIImage()
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: rightOriginalImage, style: .done, target: target, action: action)
    }
    /** Initialize a UIBarButtonItem with title、titleColor、action and target. */
    func barButtonItem(title: String, titleColor: UIColor, target: Any?, action: Selector?) -> UIBarButtonItem {
        let barButton = UIButton(title: title, titleColor: titleColor, for: .normal)
        barButton.sizeToFit()
        if let target = target, let action = action {
            barButton.addTarget(target, action: action, for: .touchUpInside)
        } else {
            barButton.addTarget(self, action: #selector(leftBarButtonItemClicked(item:)), for: .touchUpInside)
        }
        return UIBarButtonItem(customView: barButton)
    }
    /** Default pop action */
    func leftBarButtonItemClicked(item: UIBarButtonItem) {
        _ = navigationController?.popToRootViewController(animated: true)
    }
}
