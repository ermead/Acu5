//
//  EM_ContainerCollectionViewController.swift
//  Acu5
//
//  Created by Eric Mead on 1/2/16.
//  Copyright © 2016 Eric Mead. All rights reserved.
//

import UIKit

let kItemChosenNotification = "item chosen"

class EM_ContainerCollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var countLabel: UILabel!
    
    let nc = NSNotificationCenter.defaultCenter()
    var selectedCategory: String = " "
    var cellColor: UIColor = UIColor.whiteColor()
    var array: [AnyObject] = []
    var count: Int = 0
    var selectedItem: String = " "
    var selectedImage: UIImageView?
//    let channelCounts: NSDictionary = ["LU" : 11, "LI" : 18, "ST" : 45, "SP" : 21, "HT" : 9, "SI" : 21, "BL" : 67, "KI" : 27, "PC" : 9, "SJ" : 23, "GB" : 45, "LR" : 18, "REN": 24, "DU": 26]
    
    let transition = PopAnimator()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        self.countLabel.text = ""
        self.countLabel.textColor = UIColor.whiteColor()
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.homeBg()
        self.collectionView.backgroundColor = UIColor.collectionBg()
        nc.addObserver(self, selector: "handleCategoryChosen:", name: "category chosen", object: nil)
        
    }
    
    func handleCategoryChosen(notification: NSNotification){
        
        print("notified")
        if let userInfo = notification.userInfo {
            if userInfo["data"] as! String == "Points"{
                let category = (userInfo["selected"])
                let color = (userInfo["color"])
                self.selectedCategory = category as! String
                self.cellColor = color as! UIColor
                self.array = PointController.sharedController.pointsByChannel(selectedCategory)
                self.count = self.array.count
                countLabel.text = String("\(category!) channel has \(self.count) points on record")
                self.collectionView.reloadData()
            }
            if userInfo["data"] as! String == "Herbs"{
                let category = (userInfo["selected"])
                let color = (userInfo["color"])
                self.selectedCategory = category as! String
                self.cellColor = color as! UIColor
                self.array = HerbsController.sharedController.herbsByCategory(selectedCategory)
                self.count = self.array.count
                countLabel.text = String("\(category!) category has \(self.count) herbs on record")
                self.collectionView.reloadData()
            }
        }
    }
    
    //MARK: Collection View
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("collectionCell", forIndexPath: indexPath) as? EM_CollectionViewCell
        
        cell?.frame.size.width = (self.view.frame.width - 40) / 3 - 10
        cell?.frame.size.height = (cell?.frame.size.width)!
        cell?.backgroundColor = cellColor
        cell?.layer.cornerRadius = 10
        cell?.layer.borderColor = UIColor.blackColor().CGColor
        cell?.layer.borderWidth = 1
        
        if let arrayPoints = self.array as? [Point] {
            
            array = arrayPoints.sort { $0.pointOnMeridian!.localizedStandardCompare($1.pointOnMeridian!) == NSComparisonResult.OrderedAscending }
            
            if let item = array[indexPath.item] as? Point {
                
                cell?.label.text = "\(item.channelAbrev!) - \(item.number!)"
                
            }
        }
        
        if let arrayOfHerbs = self.array as? [Herb] {
            
            array = arrayOfHerbs.sort { $0.pinyinName!.localizedCaseInsensitiveCompare($1.pinyinName!) == NSComparisonResult.OrderedAscending }
            
            if let item = array[indexPath.item] as? Herb {
                
                cell?.label.text = "\(item.pinyinName!)"
                
            }
        }
      
        return cell!
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return count
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        kEntry = self.array[indexPath.item]
        performSegueWithIdentifier("toDetailView", sender: self)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "toDetailView" {
            
             if let _: EM_DetailViewController = segue.destinationViewController as? EM_DetailViewController {
              
                print(kEntry)
            }
          
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension EM_ContainerCollectionViewController: UIViewControllerTransitioningDelegate {
    
    func animationControllerForPresentedController(
        presented: UIViewController,
        presentingController presenting: UIViewController,
        sourceController source: UIViewController) ->
        UIViewControllerAnimatedTransitioning? {
            
            transition.originFrame =
                
                selectedImage!.superview!.convertRect(selectedImage!.frame, toView: nil)
            
            transition.presenting = true
            
            return transition
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        transition.presenting = false
        
        return transition
    }
    
}

