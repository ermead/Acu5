//
//  EM_ImagesController.swift
//  Acu5
//
//  Created by Eric Mead on 1/2/16.
//  Copyright © 2016 Eric Mead. All rights reserved.
//

import Foundation
import UIKit

class EM_ImagesController {

static let sharedInstance = EM_ImagesController()

var images: [Image] {
    
    let InnerClassic = Image(image: UIImage(named: "TransparentInnerClassic")!)
    
    let array = [InnerClassic]
    
    return array as! [Image]
}

}