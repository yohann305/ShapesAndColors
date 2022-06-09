//
//  OutputEntry.swift
//  ShapesAndColors
//
//  Created by Yohann Taieb on 6/8/22.
//

import Foundation
import UIKit

class OutputEntry {
    var shapeText: String!
    var shapeImage: UIImage!
    var colorText: String!
    var colorValue: UIColor!
    
    init(shapeText:String, shapeImage: UIImage, colorText: String, colorValue: UIColor) {
        self.shapeText = shapeText
        self.shapeImage = shapeImage
        self.colorText = colorText
        self.colorValue = colorValue
    }
}
