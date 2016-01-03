//
//  Image.swift
//  TraditionalMedicineCapstoneProject
//
//  Created by Eric Mead on 11/19/15.
//  Copyright © 2015 Eric Mead. All rights reserved.
//

import Foundation
import CoreData

@objc(Image)
class CDImage: NSManagedObject {


    convenience init(data: NSData?, context: NSManagedObjectContext = Stack.sharedStack.managedObjectContext) {
        
        let entity = NSEntityDescription.entityForName("Image", inManagedObjectContext: context)
        
        self.init(entity: entity!, insertIntoManagedObjectContext: context)
        
        self.imageData = data
    }
    

}
