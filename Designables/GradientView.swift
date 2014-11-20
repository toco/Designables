//
//  GradientView.swift
//  Designables
//
//  Created by Tobias Conradi on 15.11.14.
//  Copyright (c) 2014 Tobias Conradi. All rights reserved.
//

import UIKit
class GradientView: UIView {
    
    @IBInspectable var startColor:UIColor = UIColor.lightGrayColor() {
        didSet {
            updateView()
        }
    }
    @IBInspectable var endColor:UIColor = UIColor.whiteColor() {
        didSet {
            updateView()
        }
    }
    @IBInspectable var horizontal:Bool = true {
        didSet{
            updateView()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        updateView()
    }
    
    func updateView() {
        let gradientLayer = layer as CAGradientLayer
        gradientLayer.colors = [startColor.CGColor,endColor.CGColor]
        gradientLayer.startPoint = horizontal ? CGPointMake(0.0, 0.5) : CGPointMake(0.5, 0.0)
        gradientLayer.endPoint = horizontal ? CGPointMake(1.0, 0.5) : CGPointMake(0.5, 1.0)
    }
    
    override class func layerClass()->AnyClass {
        return CAGradientLayer.self
    }
    
}
