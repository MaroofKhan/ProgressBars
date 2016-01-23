//
//  HorizontalProgressBar.swift
//  HorizontalProgressBar
//
//  Created by Bruno Henriques on 08/08/15.
//  Copyright (c) 2015 Bruno Henriques. All rights reserved.
//

import UIKit

@IBDesignable public class HorizontalGraphBar : UIView {
    @IBInspectable public  var progressValue: Float = 0 {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable public  var progressColor: UIColor = UIColor.redColor() {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    override public func drawRect(rect: CGRect) {
        let progressWidth = rect.size.width * CGFloat(progressValue/100)
        
        let leftPart = CGRectMake(rect.origin.x, rect.origin.y, progressWidth, rect.size.height)
        let rightPart = CGRectMake(rect.origin.x + progressWidth, rect.origin.y, rect.size.width - progressWidth, rect.size.height)
        
        progressColor.set()
        UIRectFill(leftPart)
        
        backgroundColor?.set()
        UIRectFill(rightPart)
    }
}