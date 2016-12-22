extension UIColor {
    //用数值初始化颜色，便于生成设计图上标明的十六进制颜色
    convenience init(hexString: String) {
        // 处理前缀
        var hex = hexString
        if hex.hasPrefix("#") {
            hex.remove(at: hex.startIndex)
        }
        // 转换成16进制字符串
        hex = hex.uppercased()
        hex = "0x" + hex
        // 将字符串转换成 Int
        var hexInt: UInt32 = 0
        Scanner(string: hex).scanHexInt32(&hexInt)
        // 拆分成 RGB
        let red = CGFloat((hexInt & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((hexInt & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(hexInt & 0x0000FF) / 255.0
        let alpha = CGFloat(1.0)
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}
