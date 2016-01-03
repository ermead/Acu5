//
//  Formula+CoreDataProperties.swift
//  TraditionalMedicineCapstoneProject
//
//  Created by Eric Mead on 11/4/15.
//  Copyright © 2015 Eric Mead. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Formula {

    @NSManaged var pinyinName: String?
    @NSManaged var englishName: String?
    @NSManaged var uses: String?
    @NSManaged var category: String?
    @NSManaged var simpleIngredientsString: String?
    @NSManaged var hasContents: NSSet?
    @NSManaged var images: NSSet?

}
