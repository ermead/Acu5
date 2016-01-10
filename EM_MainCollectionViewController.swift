//
//  EM_MainCollectionViewController.swift
//  Acu5
//
//  Created by Eric Mead on 1/2/16.
//  Copyright © 2016 Eric Mead. All rights reserved.
//

import UIKit

class EM_MainCollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var data: String?
   
    var selectedImage: UIImageView?
    
    //let transition = PopAnimator()
    
    let channels = ["LU", "LI", "ST", "SP", "HT", "SI", "BL", "KI", "PC", "SJ", "GB", "LR", "REN", "DU"]
    
    var categories: [String] = [
        "Release Wind-Cold Exterior",
        "Release Wind-Heat Exterior",
        "Clear Damp-Heat",
        "Clear Blood Heat",
        "Purge Heat",
        "Clear Toxic Heat",
        "Clear Deficiency-Heat",
        "Drain Dampness",
        "Laxative",
        "Dispel Wind-Damp",
        "Dissolve Hot Phlegm",
        "Dissolve Cold Phlegm",
        "Stop Cough",
        "Aromatics to Resolve Dampness",
        "Promote Digestion",
        "Regulate Qi Flow",
        "Stop Bleeding",
        "Move the Blood",
        "Warm the Interior"
    ]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBarHidden = false
        
        self.view.backgroundColor = UIColor.tableBg()
        
        self.collectionView.backgroundColor = UIColor.collectionBg()
        

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        self.collectionView.frame.size.height = (self.view.frame.width - 40) / 4 + 10
    }
    
    //MARK: Collection View
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("collectionCell", forIndexPath: indexPath) as? EM_CollectionViewCell
        cell?.frame.size.width = (self.view.frame.width - 40) / 4 - 10
        cell?.frame.size.height = (cell?.frame.size.width)!
        cell?.layer.cornerRadius = 10
        cell?.layer.borderColor = UIColor.blackColor().CGColor
        cell?.layer.borderWidth = 1
        cell?.label.textColor = UIColor.blackColor()
        if data == "Points"{
        let array = channels
        cell?.label.text = array[indexPath.item]
            
            let ch = cell?.label.text
            
            if ch == "LU" || ch == "LI" {
                cell?.backgroundColor = UIColor.metalCellColor()
            } else if ch == "ST" || ch == "SP" {
                cell?.backgroundColor = UIColor.earthCellColor()
            } else if ch == "HT" || ch == "SI" || ch == "SJ" || ch == "PC" {
                cell?.backgroundColor = UIColor.fireCellColor()
            } else if ch == "LR" || ch == "GB" {
                cell?.backgroundColor = UIColor.woodCellColor()
            } else if ch == "KI" || ch == "BL" {
                cell?.backgroundColor = UIColor.waterCellColor()
                cell?.label.textColor = UIColor.whiteColor()
            } else if ch == "DU" || ch == "REN" {
                cell?.backgroundColor = UIColor.blackColor()
                cell?.label.textColor = UIColor.whiteColor()
            }
        }
        if data == "Herbs"{
        let array = categories
        cell?.label.text = array[indexPath.item]
           /* "Release Wind-Cold Exterior",
            "Release Wind-Heat Exterior",
            "Clear Damp-Heat",
            "Clear Blood Heat",
            "Purge Heat",
            "Clear Toxic Heat",
            "Clear Deficiency-Heat",
            "Drain Dampness",
            "Laxative",
            "Dispel Wind-Damp",
            "Dissolve Hot Phlegm",
            "Dissolve Cold Phlegm",
            "Stop Cough",
            "Aromatics to Resolve Dampness",
            "Promote Digestion",
            "Regulate Qi Flow",
            "Stop Bleeding",
            "Move the Blood",
            "Warm the Interior"*/
            let cat = cell?.label.text
            
            if cat == "Release Wind-Cold Exterior"{
                cell?.backgroundColor = UIColor.herbCatWindCold()
            } else if cat == "Release Wind-Heat Exterior"{
                cell?.backgroundColor = UIColor.herbCatWindHeat()
            } else if cat == "Clear Damp-Heat" || cat ==
                "Clear Blood Heat" || cat ==
                "Purge Heat" || cat ==
                "Clear Toxic Heat" || cat ==
                "Clear Deficiency-Heat" || cat ==
                "Stop Bleeding" || cat ==
                "Move the Blood" {
                cell?.backgroundColor = UIColor.herbCatHeat()
            } else if cat ==  "Drain Dampness" || cat ==
                "Laxative" || cat ==
                "Dispel Wind-Damp" || cat ==
                "Dissolve Hot Phlegm" || cat ==
                "Dissolve Cold Phlegm" || cat ==
                "Aromatics to Resolve Dampness" || cat ==
                "Promote Digestion" {
                cell?.backgroundColor = UIColor.herbCatDamp()
            } else if cat == "Stop Cough" {
                cell?.backgroundColor = UIColor.herbCatDry()
            } else if cat == "Warm the Interior" {
                cell?.backgroundColor = UIColor.herbCatCold()
                cell?.label.textColor = UIColor.whiteColor()
            }
        
        }
        
        
        //cell?.imageView.backgroundColor = UIColor.lightGrayColor()
      
        return cell!
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var count: Int!
        if data == "Points"{
            let array = channels
            count = array.count
        }
        if data == "Herbs"{
            let array = categories
            count = array.count
        }
        return count!
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        let nc = NSNotificationCenter.defaultCenter()
        
        if data == "Points"{
            var color: UIColor!
            let ch = channels[indexPath.item]
            
            if ch == "LU" || ch == "LI" {
                color = UIColor.metalCellColor()
            } else if ch == "ST" || ch == "SP" {
                color = UIColor.earthCellColor()
            } else if ch == "HT" || ch == "SI" || ch == "SJ" || ch == "PC" {
                color = UIColor.fireCellColor()
            } else if ch == "LR" || ch == "GB" {
                color = UIColor.woodCellColor()
            } else if ch == "KI" || ch == "BL" {
                color = UIColor.waterCellColor()
            } else if ch == "DU" || ch == "REN" {
                color = UIColor.blackColor()
            }
            
            let userInfo: NSDictionary = ["data" : self.data!, "selected" : channels[indexPath.item], "color" : color]
            nc.postNotificationName("category chosen", object: self, userInfo: userInfo as [NSObject : AnyObject])
        }
        if data == "Herbs"{
            
            var color: UIColor!
            let cat = categories[indexPath.item]
            
            if cat == "Release Wind-Cold Exterior"{
                color = UIColor.herbCatWindCold()
            } else if cat == "Release Wind-Heat Exterior"{
                color = UIColor.herbCatWindHeat()
            } else if cat == "Clear Damp-Heat" || cat ==
                "Clear Blood Heat" || cat ==
                "Purge Heat" || cat ==
                "Clear Toxic Heat" || cat ==
                "Clear Deficiency-Heat" || cat ==
                "Stop Bleeding" || cat ==
                "Move the Blood" {
                color = UIColor.herbCatHeat()
            } else if cat ==  "Drain Dampness" || cat ==
                "Laxative" || cat ==
                "Dispel Wind-Damp" || cat ==
                "Dissolve Hot Phlegm" || cat ==
                "Dissolve Cold Phlegm" || cat ==
                "Aromatics to Resolve Dampness" || cat ==
                "Promote Digestion" {
                 color = UIColor.herbCatDamp()
            } else if cat == "Stop Cough" {
                color = UIColor.herbCatDry()
            } else if cat == "Warm the Interior" {
                color = UIColor.herbCatCold()
            }

            let userInfo: NSDictionary = ["data" : self.data!, "selected" : categories[indexPath.item], "color" : color]
            nc.postNotificationName("category chosen", object: self, userInfo: userInfo as [NSObject : AnyObject])
        
        }
        
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

//extension EM_MainCollectionViewController: UIViewControllerTransitioningDelegate {
//    
//    func animationControllerForPresentedController(
//        presented: UIViewController,
//        presentingController presenting: UIViewController,
//        sourceController source: UIViewController) ->
//        UIViewControllerAnimatedTransitioning? {
//            
//            transition.originFrame =
//                
//                selectedImage!.superview!.convertRect(selectedImage!.frame, toView: nil)
//            
//            transition.presenting = true
//            
//            return transition
//    }
//    
//    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
//        
//        transition.presenting = false
//        
//        return transition
//    }
//    
//}
