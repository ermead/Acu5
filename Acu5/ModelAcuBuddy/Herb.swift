//
//  Herb.swift
//  TraditionalMedicineCapstoneProject
//
//  Created by Eric Mead on 11/2/15.
//  Copyright © 2015 Eric Mead. All rights reserved.
//

import Foundation
import CoreData

@objc(Herb)
class Herb: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    
    convenience init(pinyinName: String? = nil, pharmName: String? = nil, commonName: String? = nil, botanicalName: String? = nil, englishName: String, chineseCharacter: String? = nil, category: String? = nil, temp: String? = nil, meridians: String? = nil, uses: String? = nil, uses1: String? = nil, earliestRecord: String? = nil, gatheringInfo: String? = nil, dosage: String? = nil, majorFormulas: String? = nil, images: NSSet? = [], context: NSManagedObjectContext = Stack.sharedStack.managedObjectContext) {
        
        let entity = NSEntityDescription.entityForName("Herb", inManagedObjectContext: context)
        
        self.init(entity: entity!, insertIntoManagedObjectContext: context)
        
        self.pinyinName = pinyinName
        self.pharmName = pharmName
        self.commonName = commonName
        self.botanicalName = botanicalName
        self.englishName = englishName
        self.chineseCharacter = chineseCharacter
        self.category = category
        self.temp = temp
        self.meridians = meridians
        self.uses = uses
        self.uses1 = uses1
        self.earliestRecord = earliestRecord
        self.gatheringInfo = gatheringInfo
        self.dosage = dosage
        self.majorFormulas = majorFormulas
        self.images = images

    }
    
    func completeDetails() -> String{
        
        return "\(pinyinName), \(englishName), \(pharmName), \(botanicalName), \(uses), \(category), \(temp), \(meridians)"
    }
    
}

//@NSManaged var botanicalName: String?
//@NSManaged var category: String?
//@NSManaged var englishName: String?
//@NSManaged var imageName: String?
//@NSManaged var majorFormulas: String?
//@NSManaged var meridians: String?
//@NSManaged var pinyinName: String?
//@NSManaged var temp: String?
//@NSManaged var uses: String?
//@NSManaged var chineseCharacter: String?
//@NSManaged var pharmName: String?
//@NSManaged var commonName: String?
//@NSManaged var uses1: String?
//@NSManaged var gatheringInfo: String?
//@NSManaged var earliestRecord: String?
//@NSManaged var dosage: String?
//@NSManaged var images: NSSet?
//@NSManaged var inContents: NSSet?

