//
//  EM_MainCollectionViewController.swift
//  Acu5
//
//  Created by Eric Mead on 1/2/16.
//  Copyright © 2016 Eric Mead. All rights reserved.
//

import UIKit

class EM_MainCollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var containerView: UIView!
    
    let status = UIImageView(image: UIImage(named: "banner"))
    let label = UILabel()
    let messagesPoints = ["Choose a Channel"]
    let messagesHerbs = ["Choose a Category"]
    
    var data: String?
   
    var selectedImage: UIImageView?
    let selectedBox = UIView()
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
        
        setUpSelectedBox()
        
        status.hidden = true
        status.center.x = self.view.center.x
        status.frame.origin.y = self.collectionView.frame.origin.y - status.frame.size.height - 15
        view.addSubview(status)
        
        label.frame = CGRect(x: 0.0, y: 0.0, width: status.frame.size.width, height: status.frame.size.height)
        label.font = UIFont(name: "HelveticaNeue", size: 18.0)
        label.textColor = UIColor(red: 0.89, green: 0.38, blue: 0.0, alpha: 1.0)
        label.textAlignment = .Center
        status.addSubview(label)
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        if data == "Points" {
            showMessages(0, arrayOfMessages: messagesPoints)
        } else if data == "Herbs" {
            showMessages(0, arrayOfMessages: messagesHerbs)
        }
        
    }
    
    override func viewWillAppear(animated: Bool) {
        containerView.alpha = 1
        
        self.collectionView.frame.size.height = (self.view.frame.height - 40) / 4 + 10
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
        cell?.label.font = UIFont.systemFontOfSize(17)
            let ch = cell?.label.text
            
            if ch == "LU" || ch == "LI" {
                cell?.backgroundColor = UIColor.metalCellColor()
            } else if ch == "ST" || ch == "SP" {
                cell?.backgroundColor = UIColor.earthCellColor()
            } else if ch == "HT" || ch == "SI" || ch == "SJ" || ch == "PC" {
                cell?.backgroundColor = UIColor.fireCellColor()
                cell?.label.textColor = UIColor.whiteColor()
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
        cell?.label.font = UIFont.systemFontOfSize(12)
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
                cell?.label.textColor = UIColor.whiteColor()
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
            
            if cell?.label.text == "Aromatics to Resolve Dampness" {
                cell?.label.text = "Aromatic Resolve Damp"
            } else if cell?.label.text == "Clear Deficiency-Heat" {
                cell?.label.text = "Clear Deficient Heat"
            } else if cell?.label.text == "Drain Dampness" {
                cell?.label.text = "Drain Damp"
            } else if cell?.label.text?.containsString("-") == true {
                cell?.label.text = cell?.label.text?.stringByReplacingOccurrencesOfString("-", withString: " ")
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
    
    func setUpSelectedBox(){
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = selectedBox.bounds
        self.selectedBox.addSubview(blurEffectView)
        self.selectedBox.layer.cornerRadius = 5
        self.selectedBox.alpha = 1
        self.selectedBox.backgroundColor = UIColor.selectedBoxColor()
        self.selectedBox.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        collectionView.addSubview(selectedBox)
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
       
        let frame1 = collectionView.cellForItemAtIndexPath(indexPath)?.frame
        let frame = CGRect(x: (frame1?.origin.x)! - 5, y: (frame1?.origin.y)! - 5, width: (frame1?.width)! + 10, height: (frame1?.height)! + 10)
        
        selectedBox.frame = frame
        
        collectionView.sendSubviewToBack(selectedBox)
        
        UIView.animateWithDuration(0.2, animations: { () -> Void in
            self.containerView.alpha = 1
            }, completion: nil )
        
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
            } else {
                color = UIColor.blackColor()
            }
            //selectedBox.backgroundColor = color
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
            } else {
                color = UIColor.blackColor()
            }
            
            //selectedBox.backgroundColor = color
            let userInfo: NSDictionary = ["data" : self.data!, "selected" : categories[indexPath.item], "color" : color]
            nc.postNotificationName("category chosen", object: self, userInfo: userInfo as [NSObject : AnyObject])
        
        }
        
         showContainer()
        
    }
}
extension EM_MainCollectionViewController {
    
    func showContainer(){
    
        self.containerView.hidden = true
        
        UIView.transitionWithView(self.containerView, duration: 0.4, options:[.CurveEaseOut,UIViewAnimationOptions.TransitionFlipFromLeft],  animations: { () -> Void in
            self.containerView.hidden = false
            //self.view.bringSubviewToFront(self.containerView)
            
            }, completion: nil )
       
    }
    
    func showMessages(index: Int, arrayOfMessages: [String]) {
        
        let thisArrayOfMessages = arrayOfMessages
        
        UIView.animateWithDuration(0.33, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: .CurveEaseOut, animations: { () -> Void in
            
            self.status.center.x += self.view.frame.size.width
            
            }, completion: { _ in
                
                self.status.hidden = true
                self.status.center.x -= self.view.frame.size.width
                self.label.text = thisArrayOfMessages[index]
                
                UIView.transitionWithView(self.status, duration: 0.3, options: [.CurveEaseOut, .TransitionCurlDown] , animations: { () -> Void in
                    self.status.hidden = false
                    self.view.bringSubviewToFront(self.status)
                    
                    }, completion: { _ in
                        
                        delay(seconds: 2.0, completion: {
                            if index < thisArrayOfMessages.count-1 {
                                
                                self.showMessages(index + 1, arrayOfMessages: thisArrayOfMessages)
                                
                            } else {
                                
                                UIView.animateWithDuration(1, animations: { () -> Void in
                                    
                                    
                                    }, completion: { _ in
                                        
                                        
                                        
                                        
                                })
                                
                            }
                            
                        })
                        
                })
        })
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
