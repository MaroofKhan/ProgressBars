//
//  HorizontalProgressView.swift
//  Example
//
//  Created by Maroof Khan on 23/01/2016.
//  Copyright © 2016 Maroof Khan. All rights reserved.
//

import UIKit

class HorizontalProgressView: UIView {
    
    @IBInspectable var maximum: Float = 100.0
    @IBInspectable var value: Float   = 0.0 {
        didSet {
            update(value)
        }
    }
    
    @IBInspectable var color: UIColor = UIColor.blackColor() {
        didSet {
            progressView.backgroundColor = color
        }
    }
    
    private var progressConstraint: NSLayoutConstraint!
    private let progressView: UIView
    
    required init?(coder aDecoder: NSCoder) {
        progressView = UIView()
        progressView.translatesAutoresizingMaskIntoConstraints = false
        super.init(coder: aDecoder)
        putOn(progressView)
    }
    
    override init(frame: CGRect) {
        progressView = UIView()
        progressView.translatesAutoresizingMaskIntoConstraints = false
        super.init(frame: frame)
        putOn(progressView)
    }
    
    var perProgress: Float {
        return (Float (frame.width)) / (Float (maximum))
    }
    
    func putOn (view: UIView) {
        addSubview(view)
        progressConstraint = setupFrame (view, toView: self)
    }
    
    private func update (progress: Float) {
        guard progress <= maximum else {
            fatalError("Progress Value exceeded maximum value")
            return
        }
        
        progressConstraint.constant = ((CGFloat) (progress * perProgress))
        UIView.animateWithDuration(0.3) { () -> Void in
            self.layoutIfNeeded()
        }
    }
    
    func setupFrame (view: UIView, toView: UIView) -> NSLayoutConstraint {
        toView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: view, attribute: .Top, relatedBy: .Equal, toItem: toView, attribute: .Top, multiplier: 1.0, constant: 0.0).active = true
        NSLayoutConstraint(item: view, attribute: .Leading, relatedBy: .Equal, toItem: toView, attribute: .Leading, multiplier: 1.0, constant: 0.0).active = true
        let constraint = NSLayoutConstraint(item: view, attribute: .Trailing, relatedBy: .Equal, toItem: toView, attribute: .Leading, multiplier: 1.0, constant:0.0)
        constraint.active = true
        NSLayoutConstraint(item: view, attribute: .Bottom, relatedBy: .Equal, toItem: toView, attribute: .Bottom, multiplier: 1.0, constant: 0.0).active = true
        
        toView.setNeedsLayout()
        toView.layoutIfNeeded()
        
        return constraint
    }
}
