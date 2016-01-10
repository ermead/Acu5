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
        
        return array
    }
    
    
    static func getDataFromImage(image: UIImage) -> NSData? {
        
        if let data = UIImageJPEGRepresentation(image, 1.0) {
            
            //let imageData = UIImagePNGRepresentation(image, 1.0)
            
            return data
            
        } else {
            print("error converting image to data")
            return nil
           
        }
        
    }
    
    static func getImageFromData(imageData: NSData) -> UIImage? {
        
        if let image = UIImage(data: imageData){
            
            return image
        } else {
            print("there was an error getting the image from data")
            return nil
            
        }
        
        
    }
}

