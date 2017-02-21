//
//  UIViewController+Extension.swift
//  IDSwiftExtensions
//
//  Created by Island on 17/2/21.
//
//

public extension UIViewController {
    
    public func configureNavigationBar(title: String) {
        configureNavigationBar(title: title, leftImage: nil, target: nil, action: nil)
    }
    public func configureNavigationBar(title: String, leftImage: UIImage) {
        configureNavigationBar(title: title, leftImage: leftImage, target: nil, action: nil)
    }
    public func configureNavigationBar(title: String, leftTitle: String) {
        configureNavigationBar(title: title, leftTitle: leftTitle, target: nil, action: nil)
    }
    public func configureNavigationBar(title: String, leftAttributedString: NSAttributedString) {
        configureNavigationBar(title: title, leftAttributedString: leftAttributedString, target: nil, action: nil)
    }
    public func configureNavigationBar(title: String, leftAttributedString: NSAttributedString, target: Any?, action: Selector?) {
        self.title = title
        let leftButton = UIButton(attributedTitle: leftAttributedString)
        leftButton.sizeToFit()
        if let target = target, let action = action {
            leftButton.addTarget(target, action: action, for: .touchUpInside)
        } else {
            leftButton.addTarget(self, action: #selector(leftBarButtonItemClicked(item:)), for: .touchUpInside)
        }
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: leftButton)
    }
    public func configureNavigationBar(title: String, leftImage: UIImage?, target: Any?, action: Selector?) {
        self.title = title
        
        if let target = target, let action = action {
            navigationItem.leftBarButtonItem = UIBarButtonItem(image: leftImage, style: .done, target: target, action: action)
        } else {
            navigationItem.leftBarButtonItem = UIBarButtonItem(image: leftImage, style: .done, target: self, action: #selector(leftBarButtonItemClicked(item:)))
        }
    }
    public func configureNavigationBar(title: String, leftTitle: String, target: Any?, action: Selector?) {
        self.title = title
        if let target = target, let action = action {
            navigationItem.leftBarButtonItem = UIBarButtonItem(title: leftTitle, style: .done, target: target, action: action)
        } else {
            navigationItem.leftBarButtonItem = UIBarButtonItem(title: leftTitle, style: .done, target: self, action: #selector(leftBarButtonItemClicked(item:)))
        }
    }
    public func configureNavigationBar(rightImage: UIImage, target: Any, action: Selector) {
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: rightImage, style: .done, target: target, action: action)
    }
    public func configureNavigationBar(rightTitle: String, target: Any, action: Selector) {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: rightTitle, style: .done, target: target, action: action)
    }
    public func configureNavigationBar(rightAttributedString: NSAttributedString, target: Any, action: Selector) {
        let rightButton = UIButton(attributedTitle: rightAttributedString)
        rightButton.sizeToFit()
        rightButton.addTarget(target, action: action, for: .touchUpInside)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightButton)
    }
    
    public func leftBarButtonItemClicked(item: UIBarButtonItem) {
        _ = navigationController?.popToRootViewController(animated: true)
    }
}
