//
//  Creation.swift
//  project-5-puzzle
//
//  Created by michele saladino on 24/01/2020.
//  Copyright © 2020 michele saladino. All rights reserved.
//

import Foundation
import UIKit

class Creation {
    var image: UIImage
    var colorSwatch: ColorSwatch
    
    static var defaultImage: UIImage {
        return UIImage.init(named: "placeholder")!
    }
    
    static var defaultColorSwatch: ColorSwatch {
        return ColorSwatch.init(caption: "Simply Yellow", color: .yellow)
    }
    
    init() {
        // stored property initialization
        image = Creation.defaultImage
        colorSwatch = Creation.defaultColorSwatch
    }
    
    convenience init(colorSwatch: ColorSwatch?) {
        self.init()
        // stored property initialization
        if let userColorSwatch = colorSwatch {
            self.colorSwatch = userColorSwatch
        }
    }
    
    func reset(colorSwatch: ColorSwatch?) {
        image = Creation.defaultImage
        if let userColorSwatch = colorSwatch {
            self.colorSwatch = userColorSwatch
        }
        else {
            self.colorSwatch = Creation.defaultColorSwatch
        }
        
        
    }
}
