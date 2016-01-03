//
//  PointController.swift
//  TraditionalMedicineCapstoneProject
//
//  Created by Eric Mead on 10/25/15.
//  Copyright © 2015 Eric Mead. All rights reserved.
//

import UIKit
import CoreData

class PointController: NSObject {

    private let PointKey = "points"
    
    static let sharedController = PointController()
//    
//    var defaultPoints: [Point] {
//        
//        let ST36 = Point(pinyinName: "Zu San Li", englishName: "Leg Three Miles", pointOnMeridian: "ST-36", specialCategories: "He Sea", channel: "Foot Yang Ming", locationDescription: "on the Leg", uses: "channel regulation")
//        let HT7 = Point(pinyinName: "Shen Men", englishName: "Spirit Gate", pointOnMeridian: "HT-7", specialCategories: "Yuan Source", channel: "Arm Shao Yin",locationDescription: "", uses: "channel regulation")
//        let LR3 = Point(pinyinName: "Tai Chong", englishName: "Great Rushing", pointOnMeridian: "LR-3", specialCategories: "Yuan Source", channel:"Leg Jue Yin", locationDescription: "", uses: "channel regulation")
//        let LI4 = Point(pinyinName: "Hegu", englishName: "Adjoining Valley", pointOnMeridian: "LI-4", specialCategories: "Yuan Source", channel: "Arm Yang Ming", locationDescription: "", uses: "channel regulation")
//    
//    return [ST36, HT7, LR3, LI4]
//    
//    }
    
    var defaultPoints: [Point] {
        
        
        var array: [Point] = []
        
        let Lung = PointSets.sharedController.getPointSet(PointSets.PointSetType.Lung)
        //let lungSorted = Lung.sort { $0.pointOnMeridian!.localizedCaseInsensitiveCompare($1.pointOnMeridian!) == NSComparisonResult.OrderedAscending }
        let LargeIntestine = PointSets.sharedController.getPointSet(PointSets.PointSetType.LargeIntestine)
        let Stomach = PointSets.sharedController.getPointSet(PointSets.PointSetType.Stomach)
        let Spleen = PointSets.sharedController.getPointSet(PointSets.PointSetType.Spleen)
        let Heart = PointSets.sharedController.getPointSet(PointSets.PointSetType.Heart)
        let SmallIntestine = PointSets.sharedController.getPointSet(PointSets.PointSetType.SmallIntestine)
        let Bladder = PointSets.sharedController.getPointSet(PointSets.PointSetType.Bladder)
        let Kidney = PointSets.sharedController.getPointSet(PointSets.PointSetType.Kidney)
        let Pericardium = PointSets.sharedController.getPointSet(PointSets.PointSetType.Pericardium)
        let SanJiao = PointSets.sharedController.getPointSet(PointSets.PointSetType.SanJiao)
        let GallBladder = PointSets.sharedController.getPointSet(PointSets.PointSetType.GallBladder)
        let Liver = PointSets.sharedController.getPointSet(PointSets.PointSetType.Liver)
        let Ren = PointSets.sharedController.getPointSet(PointSets.PointSetType.Ren)
        let Du = PointSets.sharedController.getPointSet(PointSets.PointSetType.Du)
   
        let array1 = [Lung, LargeIntestine, Stomach, Spleen]
        let array2 = [Heart, SmallIntestine, Bladder, Kidney]
        let array3 = [Pericardium, SanJiao, GallBladder, Liver]
        let array4 = [Ren, Du]
      
        
        let allCategories = [array1, array2, array3, array4]
        
        let flattenedAllCategories = allCategories.flatMap{$0}
        let flattenedFlattenedAllCategories = flattenedAllCategories.flatMap{$0}
        
        array = flattenedFlattenedAllCategories
        
        let arraySorted = array.sort { $0.pointOnMeridian!.localizedCaseInsensitiveCompare($1.pointOnMeridian!) == NSComparisonResult.OrderedAscending }
        
        return arraySorted
    }
    
    var points: [Point] {
        
        let request = NSFetchRequest(entityName: "Point")
        
        do {
            let pointsArray = try Stack.sharedStack.managedObjectContext.executeFetchRequest(request) as! [Point]
            
            return pointsArray
            
        } catch {
            return []
        }
    }
    
    var pointsByPointOnMeridian: [Point] {
        
        let array = points
        let sorted = array.sort { $0.pointOnMeridian!.localizedStandardCompare($1.pointOnMeridian!) == NSComparisonResult.OrderedAscending }
        return sorted
    }
    
    var pointsByPinyin: [Point] {
        
        let array = points
        let sorted = array.sort { $0.pinyinName!.localizedCaseInsensitiveCompare($1.pinyinName!) == NSComparisonResult.OrderedAscending }
        return sorted
    }
    
    var pointsByChannel: [Point] {
        
        let array = points
        let sorted = array.sort { $0.channel!.localizedCaseInsensitiveCompare($1.channel!) == NSComparisonResult.OrderedAscending }
        return sorted
    }
    
    func getPointsByChannel(channelAbrev: String) -> [Point] {
        let thesePoints = self.points.filter({ $0.channelAbrev!.containsString(channelAbrev) })
        
        return thesePoints
    }
    
    func addPoint(point: Point) {
        saveToPersistentStorage()
        print("did I add it?")
    }
    
    func removePoint( point: Point) {
        point.managedObjectContext?.deleteObject(point)
        saveToPersistentStorage()
    }
    
    func saveToPersistentStorage(){
        do {
            try Stack.sharedStack.managedObjectContext.save()
        } catch {
            print("Error saving Managed Object Context. Items not saved.")
        }
    }
    
    func filePath(key: String) -> String {
        let directorySearchResults = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory,NSSearchPathDomainMask.AllDomainsMask, true)
        let documentsPath: AnyObject = directorySearchResults[0]
        let entriesPath = documentsPath.stringByAppendingString("/\(key).plist")
        
        return entriesPath
    }
    
    
    
}


//private let HerbKey = "herbs"
//
//static let sharedController = HerbsController()
//
//var defaultHerbs: [Herb] {
//    
//    let cinnamon = Herb(pinyinName: "Gui Zhi", botanicalName: "insert botanical name", englishName: "Cinnamon", category: "Release the Exterior", temp: "Warm", meridians: "insert meridians", uses: "cold & flu", majorFormulas: "Gui Zhi Tang")
//    let ginseng = Herb(pinyinName: "Ren Shen", botanicalName: "insert botanical name", englishName: "Ginseng", category: "Tonify the Qi", temp: "Warm", meridians: "insert meridians", uses: "Strengthen the Qi", majorFormulas: "Si Jun Zi Tang")
//    let dangGui = Herb(pinyinName: "Dang Gui", botanicalName: "insert botanical name", englishName: "Angelica", category: "Tonify the Blood", temp: "Warm", meridians: "insert meridians", uses: "Strengthen the Blood", majorFormulas: "Si Wu Tang")
//    
//    return [cinnamon, ginseng, dangGui]
//    
//}
//
//var herbs: [Herb] {
//    
//    let request = NSFetchRequest(entityName: "Herb")
//    
//    do {
//        return try Stack.sharedStack.managedObjectContext.executeFetchRequest(request) as! [Herb]
//        
//    } catch {
//        return []
//    }
//}
//
//func addHerb(herb: Herb) {
//    saveToPersistentStorage()
//}
//
//func removeHerb( herb: Herb) {
//    herb.managedObjectContext?.deleteObject(herb)
//    saveToPersistentStorage()
//}
//
//func saveToPersistentStorage(){
//    do {
//        try Stack.sharedStack.managedObjectContext.save()
//    } catch {
//        print("Error saving Managed Object Context. Items not saved.")
//    }
//}
//
//func filePath(key: String) -> String {
//    let directorySearchResults = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory,NSSearchPathDomainMask.AllDomainsMask, true)
//    let documentsPath: AnyObject = directorySearchResults[0]
//    let entriesPath = documentsPath.stringByAppendingString("/\(key).plist")
//    
//    return entriesPath
//}
//}