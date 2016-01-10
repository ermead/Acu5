//
//  Colors.swift
//  Acu5
//
//  Created by Eric Mead on 1/2/16.
//  Copyright © 2016 Eric Mead. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    
    //HomeScreen
    
    static func homeBg() -> UIColor {
        
        return UIColor(red: 0.016, green: 0.700, blue: 0.553, alpha: 1)
    }
    
    static func homeButton1() -> UIColor {
        
        return UIColor(red: 0.016, green: 0.400, blue: 0.553, alpha: 0.3)
    }
    
    static func homeButton2() -> UIColor {
        
        return UIColor(red: 0.016, green: 0.400, blue: 0.553, alpha: 0.3)
    }
    
    static func homeButtonBorderColor() -> UIColor {
        
        return UIColor(red: 0, green: 0, blue: 0.553, alpha: 1)
    }
    
    static func homeButtonTitleColor() -> UIColor {
        
        return UIColor.whiteColor()
    }
    
    static func homePopUpView() -> UIColor {
        
        return UIColor(red: 0, green: 0, blue: 0.553, alpha: 0.3)
    }
    
    static func homePopUpButtons() -> UIColor {
        
        return UIColor(red: 0, green: 0, blue: 0.553, alpha: 0.3)
    }
    
    static func homePopUpDismissButton() -> UIColor {
        
        return UIColor(red: 0.016, green: 0.400, blue: 0.553, alpha: 1)
    }

    //MainColectionView
    
    static func tableBg() -> UIColor {
        
        return UIColor(red: 0.016, green: 0.700, blue: 0.553, alpha: 1)
    }
    
    static func collectionBg() -> UIColor {
        
        return UIColor(red: 0.016, green: 0.400, blue: 0.553, alpha: 0.3)
    }
    
    //CollectionView Cells
    
    //CHANNELS:
    static func waterCellColor() -> UIColor {
        
        return UIColor.blueColor()
    }
    
    static func woodCellColor() -> UIColor {
        
        return UIColor.greenColor()
    }

    static func fireCellColor() -> UIColor {
        
        return UIColor.redColor()
    }

    static func earthCellColor() -> UIColor {
        
        return UIColor.yellowColor()
    }
    
    static func metalCellColor() -> UIColor {
        
        return UIColor.whiteColor()
    }
    //HERB CATEGORIES:
    /* "Release Wind-Cold Exterior",
    "Release Wind-Heat Exterior",
    "Clear Damp-Heat",
    "Clear Blood Heat",
    "Purge Heat",
    "Clear Toxic Heat",
    "Clear Deficiency-Heat",
    "Drain Dampness",
    "Laxative",
    "Dispel Wind-Damp",
    "Dissolve Hot Phlegm",
    "Dissolve Cold Phlegm",
    "Stop Cough",
    "Aromatics to Resolve Dampness",
    "Promote Digestion",
    "Regulate Qi Flow",
    "Stop Bleeding",
    "Move the Blood",
    "Warm the Interior"*/
    
    static func herbCatWindCold() -> UIColor {
        return UIColor.greenColor()
    }
    static func herbCatWindHeat() -> UIColor {
        return UIColor.greenColor()
    }
    static func herbCatHeat() -> UIColor {
        return UIColor.redColor()
    }
    static func herbCatDamp() -> UIColor {
        return UIColor.yellowColor()
    }
    static func herbCatCold() -> UIColor {
        return UIColor.blueColor()
    }
    static func herbCatDry() -> UIColor {
        return UIColor.whiteColor()
    }
  

    
    


    static func blueColor1() -> UIColor {
        return UIColor(red: 0.016, green: 0.400, blue: 0.553, alpha: 1)
    }
    
}