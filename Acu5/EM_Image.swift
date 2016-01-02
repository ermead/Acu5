//
//  Image.swift
//  Acu5
//
//  Created by Eric Mead on 1/2/16.
//  Copyright © 2016 Eric Mead. All rights reserved.
//

import Foundation
import UIKit

class Image: NSObject {
    
    var image: UIImage?
    
    convenience init(image: UIImage){
        
        self.init()
        self.image = image
        
    }
    
}