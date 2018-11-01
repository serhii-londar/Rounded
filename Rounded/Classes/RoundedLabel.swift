//
//  RoundedLabel.swift
//  Rounded
//
//  Created by serhii-londar on 06/06/2018.
//  Copyright (c) 2018 serhii-londar. All rights reserved.
//

import UIKit

@IBDesignable open class RoundedLabel: UILabel, Rounded {
    @IBInspectable open var cornerRadius: CGFloat = defaultCornerRadius {
        didSet { updateCorderRadius() }
    }
    @IBInspectable open var radiusMultiplier: CGFloat = defaultRadiusMultiplier {
        didSet { updateRadiusMultiplier() }
    }
    @IBInspectable open var borderWidth: CGFloat = defaultBorderWidth {
        didSet { updateBorderWidth() }
    }
    @IBInspectable open var borderColor: UIColor? {
        didSet { updateBoderColor() }
    }
    override open var bounds: CGRect {
        didSet { updateCorderRadius() }
    }
    @IBInspectable open var insets: UIEdgeInsets = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 0) {
        didSet {
            self.drawText(in: CGRect(x: self.frame.origin.x, y: self.frame.origin.y, width: self.frame.size.width + self.insets.left + self.insets.right, height: self.frame.size.height + self.insets.top + self.insets.bottom))
        }
    }
    override open func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: self.insets))
    }
    override open var intrinsicContentSize: CGSize {
        var size = super.intrinsicContentSize
        size.width = size.width + self.insets.left + self.insets.right
        size.height = size.height + self.insets.top + self.insets.bottom
        return size
    }
}
