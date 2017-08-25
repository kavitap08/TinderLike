//
//  Constant.swift
//  DemoTinder
//
//  Created by Trident Technolabs on 19/08/17.
//  Copyright © 2017 Trident Technolabs. All rights reserved.
//

import Foundation
import UIKit

let kNAME = "name"
let KSKILL = "Skill"
let kSEX = "sex"
let kMALE = "Male"
let kFEMALE = "Female"
let kDjango = "Django"
let kReact = "React"
let kPython = "Python"
let kSTATUS = "status"
let kACCEPT = "accept"
let kREJECT = "reject"

let imgMale = UIImage(named: "men.png")
let imgFemale = UIImage(named: "women.jpg")

@IBDesignable extension UIView
{
    @IBInspectable var borderColor: UIColor? {
        set {
            layer.borderColor = newValue?.cgColor
        }
        get {
            guard let color = layer.borderColor else {
                return nil
            }
            return UIColor(cgColor: color)
        }
    }
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
            clipsToBounds = newValue > 0
        }
        get {
            return layer.cornerRadius
        }
    }
}
