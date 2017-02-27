# IDSwiftExtensions

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate IDSwiftExtensions into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'IDSwiftExtensions', '~> 0.0.5'
end
```

Then, run the following command:

```bash
$ pod install
```

## Installation
### UIDevice
- 宽度

```
UIScreen.width
```

- 高度

```
UIScreen.height
```

### UIColor
- 将十六进制字符串 转为 UIColor 对象

```
UIColor(hexString: String)
```


### UIView
- 创建带背景色的 view


```
UIView(backgroundColor: UIColor)
```
- 创建带背景色 和 圆角的 view

```
UIView(backgroundColor: UIColor, cornerRadius: CGFloat)
```

### UILabel
- 创建一个带边框 和 圆角的 Label


```
UILabel(font: UIFont, textColor: UIColor, borderWidth: CGFloat, cornerRadius: CGFloat)
```
- 创建一个 label

```
UILabel(font: UIFont, textColor: UIColor)
```
- 创建一个带文本的 label

```
UILabel(text: String, textColor: UIColor, font: UIFont)
```

### UIButton

- 创建一个带富文本的 button

```
UIButton(attributedTitle: NSAttributedString, for state: UIControlState)
```
- 创建一个带文本，指定文本颜色的 button

```
UIButton(title: String, titleColor: UIColor, for state: UIControlState)
```

### UIImageView
- 创建一个带图片的 imageView

```
UIImageView(imageNamed: String)
```
