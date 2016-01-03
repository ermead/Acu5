//
//  Channel+CoreDataProperties.swift
//  TraditionalMedicineCapstoneProject
//
//  Created by Eric Mead on 11/12/15.
//  Copyright © 2015 Eric Mead. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Channel {

    @NSManaged var name: String?
    @NSManaged var uses: String?
    @NSManaged var simplePointsString: String?
    @NSManaged var hasPoints: NSSet?
    @NSManaged var images: NSSet?

}
