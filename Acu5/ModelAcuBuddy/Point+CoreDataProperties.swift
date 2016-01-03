//
//  Point+CoreDataProperties.swift
//  TraditionalMedicineCapstoneProject
//
//  Created by Eric Mead on 12/9/15.
//  Copyright © 2015 Eric Mead. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Point {

    @NSManaged var channel: String?
    @NSManaged var channelAbrev: String?
    @NSManaged var chineseCharacter: String?
    @NSManaged var englishName: String?
    @NSManaged var imageName: String?
    @NSManaged var locationDescription: String?
    @NSManaged var number: String?
    @NSManaged var pinyinName: String?
    @NSManaged var pointOnMeridian: String?
    @NSManaged var specialCategories: String?
    @NSManaged var uses: String?
    @NSManaged var meeting: String?
    @NSManaged var needling: String?
    @NSManaged var warning: String?
    @NSManaged var actions: String?
    @NSManaged var neuroAnatomy: String?
    @NSManaged var triggerPointAssociations: String?
    @NSManaged var images: NSSet?
    @NSManaged var onChannel: NSSet?

}
