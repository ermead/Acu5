//
//  AppDelegate.swift
//  Acu5
//
//  Created by Eric Mead on 1/2/16.
//  Copyright © 2016 Eric Mead. All rights reserved.
//


import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        
        let fetchRequestDefaultHerbs = NSFetchRequest(entityName: "Herb")
        do {
            let results = try Stack.sharedStack.managedObjectContext.executeFetchRequest(fetchRequestDefaultHerbs)
            if results.count == 0 {
                
                loadHerbDefaultData()
            }
        } catch {
            fatalError("Error fetching data")
        }
        
        let fetchRequestDefaultPoints = NSFetchRequest(entityName: "Point")
        do {
            let results = try Stack.sharedStack.managedObjectContext.executeFetchRequest(fetchRequestDefaultPoints)
            if results.count == 0 {
                
                loadPointsDefaultData()
            }
        } catch {
            fatalError("Error fetching data")
        }
        
        
        
        return true
    }
    
    func loadHerbDefaultData() {
        
        guard let _ = NSEntityDescription.entityForName("Herb", inManagedObjectContext: Stack.sharedStack.managedObjectContext) else { fatalError("Could not find herbs entity description!")}
        
        _ = HerbsController.sharedController.defaultHerbs
        
        
    }
    
    func loadPointsDefaultData() {
        
        guard let _ = NSEntityDescription.entityForName("Point", inManagedObjectContext: Stack.sharedStack.managedObjectContext) else { fatalError("Could not find points entity description!")}
        
        _ = PointController.sharedController.defaultPoints
        
    }
    
    
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        
    }
    
    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        // Saves changes in the application's managed object context before the application terminates.
        
        self.saveContext()
    }
    
    func saveContext () {
        if Stack.sharedStack.managedObjectContext.hasChanges {
            do {
                try Stack.sharedStack.managedObjectContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                NSLog("Unresolved error \(nserror), \(nserror.userInfo)")
                abort()
            }
        }
    }
}