//
//  CDImage+CoreDataProperties.swift
//  Acu5
//
//  Created by Eric Mead on 1/3/16.
//  Copyright © 2016 Eric Mead. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension CDImage {

    @NSManaged var image: NSData?
    @NSManaged var reference: String?
    @NSManaged var herb: Herb?
    @NSManaged var point: NSManagedObject?

}
