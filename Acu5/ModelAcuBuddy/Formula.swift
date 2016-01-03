//
//  Formula.swift
//  TraditionalMedicineCapstoneProject
//
//  Created by Eric Mead on 11/3/15.
//  Copyright © 2015 Eric Mead. All rights reserved.
//

import Foundation
import CoreData

@objc(Formula)
class Formula: NSManagedObject {

    convenience init(pinyinName: String? = "", englishName: String? = "", uses: String? = "", simpleIngredientsString: String? = "", category: String? = "", hasContents: NSSet?, images: NSSet? = [], context: NSManagedObjectContext = Stack.sharedStack.managedObjectContext){
        
        let entity = NSEntityDescription.entityForName("Formula", inManagedObjectContext: context)
        
        self.init(entity: entity!, insertIntoManagedObjectContext: context)
        
        self.pinyinName = pinyinName
        self.englishName = englishName
        self.simpleIngredientsString = simpleIngredientsString
        self.uses = uses
        self.category = category
     
    }

}



//convenience init(pinyinName: String? = "", englishName: String? = "", pointOnMeridian: String? = "", specialCategories: String? = "", locationDescription: String? = "", channel: String? = "", uses: String? = "", imageName: String? = "", context: NSManagedObjectContext = Stack.sharedStack.managedObjectContext) {
//    
//    let entity = NSEntityDescription.entityForName("Point", inManagedObjectContext: context)
//    
//    self.init(entity: entity!, insertIntoManagedObjectContext: context)
//    
//    self.pinyinName = pinyinName
//    self.englishName = englishName
//    self.pointOnMeridian = pointOnMeridian
//    self.specialCategories = specialCategories
//    self.locationDescription = locationDescription
//    self.channel = channel
//    self.uses = uses
//    self.imageName = imageName
//    
//}