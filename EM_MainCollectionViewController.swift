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
    
    let transition = PopAnimator()
    
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
        if data == "Points"{
        let array = channels
        cell?.label.text = array[indexPath.item]
        }
        if data == "Herbs"{
        let array = categories
        cell?.label.text = array[indexPath.item]
        
        }
        
        
        cell?.imageView.backgroundColor = UIColor.lightGrayColor()
      
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
            let userInfo: NSDictionary = ["data" : self.data!, "selected" : channels[indexPath.item]]
            nc.postNotificationName("category chosen", object: self, userInfo: userInfo as [NSObject : AnyObject])
        }
        if data == "Herbs"{
            let userInfo: NSDictionary = ["data" : self.data!, "selected" : categories[indexPath.item]]
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

extension EM_MainCollectionViewController: UIViewControllerTransitioningDelegate {
    
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
