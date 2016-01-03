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

    let nc = NSNotificationCenter.defaultCenter()
    var selectedCategory: String = " "
    var count: Int = 0
    var selectedItem: String = " "
    var selectedImage: UIImageView?
    let channelCounts: NSDictionary = ["LU" : 11, "LI" : 18, "ST" : 45, "SP" : 21, "HT" : 9, "SI" : 21, "BL" : 67, "KI" : 27, "PC" : 9, "SJ" : 23, "GB" : 45, "LR" : 18, "REN": 24, "DU": 26]
    
    let transition = PopAnimator()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.backgroundColor = UIColor.whiteColor()
      
        nc.addObserver(self, selector: "handleCategoryChosen:", name: "category chosen", object: nil)
    }
    
    func handleCategoryChosen(notification: NSNotification){
        
        print("notified")
        if let userInfo = notification.userInfo {
            let category = (userInfo["selected"])
            self.selectedCategory = category as! String
            self.count = channelCounts[selectedCategory] as! Int
            self.collectionView.reloadData()
        }
    }
    
    //MARK: Collection View
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("collectionCell", forIndexPath: indexPath) as? EM_CollectionViewCell
        
        let category = self.selectedCategory as! String
        let stringNumber = String(indexPath.item + 1)
        
        cell?.label.text = "\(category) - \(stringNumber)"
        
        return cell!
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return count
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        performSegueWithIdentifier("toDetailView", sender: self)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "toDetailView" {
            
             if let _: EM_DetailViewController = segue.destinationViewController as? EM_DetailViewController {
                let indexPath = collectionView.indexPathsForSelectedItems()?.first?.item
                let category = self.selectedCategory as! String
                let stringNumber = String(indexPath! + 1)
                let reference = "\(category) - \(stringNumber)"
                print(reference)
                kEntry = reference
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

