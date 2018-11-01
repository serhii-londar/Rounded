//
//  RoundedTextField.swift
//  Rounded
//
//  Created by serhii-londar on 06/06/2018.
//  Copyright (c) 2018 serhii-londar. All rights reserved.
//

import UIKit

@IBDesignable open class RoundedTextField: UITextField, Rounded {
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
    @IBInspectable open var textRectInsetPoint: CGPoint = .zero
    @IBInspectable open var editingRectInsetPoint: CGPoint = .zero
    open override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: textRectInsetPoint.x, dy: textRectInsetPoint.y)
    }
    open override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: editingRectInsetPoint.x, dy: editingRectInsetPoint.y)
    }
}
