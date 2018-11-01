//
//  RoundedView.swift
//  Rounded
//
//  Created by serhii-londar on 06/06/2018.
//  Copyright (c) 2018 serhii-londar. All rights reserved.
//

import UIKit

@IBDesignable open class RoundedView: UIView, Rounded {
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
}
