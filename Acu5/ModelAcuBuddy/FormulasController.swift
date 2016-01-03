//
//  FormulasController.swift
//  TraditionalMedicineCapstoneProject
//
//  Created by Eric Mead on 11/4/15.
//  Copyright © 2015 Eric Mead. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class FormulasController: NSObject {
    
    private let key = "formulas"
    static let sharedController = FormulasController()
    
//    var defaultHerbs: [Herb] {
//        
//        let cinnamon = Herb(pinyinName: "Gui Zhi", botanicalName: "insert botanical name", englishName: "Cinnamon", category: "Release the Exterior", temp: "Warm", meridians: "insert meridians", uses: "cold & flu", majorFormulas: "Gui Zhi Tang")
//        let ginseng = Herb(pinyinName: "Ren Shen", botanicalName: "insert botanical name", englishName: "Ginseng", category: "Tonify the Qi", temp: "Warm", meridians: "insert meridians", uses: "Strengthen the Qi", majorFormulas: "Si Jun Zi Tang")
//        let dangGui = Herb(pinyinName: "Dang Gui", botanicalName: "insert botanical name", englishName: "Angelica", category: "Tonify the Blood", temp: "Warm", meridians: "insert meridians", uses: "Strengthen the Blood", majorFormulas: "Si Wu Tang")
//        
//        return [cinnamon, ginseng, dangGui]
//        
//    }
    
    var defaultFormulas : [Formula] {
        
        let array = FormulaSets.sharedController.allFormulas()
        return array
        
    }
    
    var formulas: [Formula] {
        
        let request = NSFetchRequest(entityName: "Formula")
        
        do {
            return try Stack.sharedStack.managedObjectContext.executeFetchRequest(request) as! [Formula]
            
        } catch {
            return []
        }
    }
    
    var formulasByPinyin: [Formula] {
        
        let array = formulas.sort { $0.pinyinName!.localizedCaseInsensitiveCompare($1.pinyinName!) == NSComparisonResult.OrderedAscending }
        
        return array
        
    }
    
    func getFormulasByCategory(category: String) -> [Formula] {
        
        let theseFormulas = self.formulas.filter({ $0.category!.containsString(category) })
        
        return theseFormulas
    }
    
    func addFormula(formula: Formula) {
        saveToPersistentStorage()
    }
    
    func removeFormula(formula: Formula) {
        formula.managedObjectContext?.deleteObject(formula)
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