//
//  PointComboController.swift
//  TraditionalMedicineCapstoneProject
//
//  Created by Eric Mead on 11/12/15.
//  Copyright © 2015 Eric Mead. All rights reserved.
//


import UIKit
import CoreData

class ChannelController: NSObject {
    
    private let ChannelKey = "channelCombo"
    
    let moc = Stack.sharedStack.managedObjectContext
    
    static let sharedController = ChannelController()
    
    var defaultChannels: [Channel] {
        
        var pointsArray : [Point] = PointController.sharedController.points.filter({$0.pinyinName!.lowercaseString.containsString("tai chong")})
        
        let allCombos = ChannelSets.sharedController.allCombos()
        
        return allCombos
        
    }
    
    var channels: [Channel] {
        
        let request = NSFetchRequest(entityName: "Channel")
        
        do {
            return try Stack.sharedStack.managedObjectContext.executeFetchRequest(request) as! [Channel]
            
        } catch {
            return []
        }
    }
    
    var channelsByName: [Channel] {
        
        let array = channels.sort { $0.name!.localizedCaseInsensitiveCompare($1.name!) == NSComparisonResult.OrderedAscending }
        
        return array
        
    }
    
    func addCombo(combo: Channel) {
        saveToPersistentStorage()
        print("did I add it?")
    }
    
    func removeCombo(combo: Channel) {
        combo.managedObjectContext?.deleteObject(combo)
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