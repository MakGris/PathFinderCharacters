//
//  UIButtonExtensions.swift
//  PathFinderCharacters
//
//  Created by Maksim Grischenko on 18.06.2023.
//

import UIKit

extension UIButton {
    func pulsate() {
    let pulse = CASpringAnimation(keyPath: "transform.scale")
    pulse.duration = 0.4
    pulse.fromValue = 0.98
    pulse.toValue = 1.0
    pulse.autoreverses = false
    pulse.repeatCount = .zero
    pulse.initialVelocity = 0.5
    layer.add(pulse, forKey: nil)
    }
    func flash() {
    let flash = CABasicAnimation(keyPath: "opacity")
    flash.duration = 0.3
    flash.fromValue = 1
    flash.toValue = 0.1
    flash.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
    flash.autoreverses = true
    flash.repeatCount = 2
    layer.add(flash, forKey: nil)
    }
}
