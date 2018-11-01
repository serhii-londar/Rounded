//
//  Rounded.swift
//  Rounded
//
//  Created by serhii-londar on 06/06/2018.
//  Copyright (c) 2018 serhii-londar. All rights reserved.
//

import UIKit

/// Basic protocol with base properties which should support rounded views.
public protocol Rounded {
    /// Corner radius for view.
    var cornerRadius: CGFloat { get set }
    /// Radius multiplier.
    var radiusMultiplier: CGFloat { get set }
    /// Border width.
    var borderWidth: CGFloat { get set }
    /// Border color.
    var borderColor: UIColor? { get set }
}

// MARK: - Default implementation of Rounded protocol for UIView class and all subclasses. All subclasses use this default implementaion.
public extension Rounded where Self: UIView {
    /// Default radius multiplier value 0
    static var defaultRadiusMultiplier: CGFloat { return 0 }
    /// Default corner readius 0
    static var defaultCornerRadius: CGFloat { return 0 }
    /// Defauult border width value 0
    static var defaultBorderWidth: CGFloat { return 0 }
    /// Mehod fou updating border width
    func updateBorderWidth() { layer.borderWidth = borderWidth }
    /// Method for updating border color
    func updateBoderColor() { layer.borderColor = borderColor?.cgColor }
    /// Method for updating corner radius
    func updateCorderRadius() {
        guard cornerRadius != 0 else { return }
        layer.cornerRadius = cornerRadius
    }
    /// Method for updating radius multiplier
    func updateRadiusMultiplier() {
        guard radiusMultiplier != 0 else { return }
        let shortestDimmension = min(bounds.size.width, bounds.size.height)
        layer.cornerRadius = shortestDimmension / radiusMultiplier
    }
}
