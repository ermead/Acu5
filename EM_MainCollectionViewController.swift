//
//  EM_MainCollectionViewController.swift
//  Acu5
//
//  Created by Eric Mead on 1/2/16.
//  Copyright © 2016 Eric Mead. All rights reserved.
//

import UIKit

class EM_MainCollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var selectedImage: UIImageView?
    
    let transition = PopAnimator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBarHidden = false
        
        self.view.backgroundColor = UIColor.tableBg()

        // Do any additional setup after loading the view.
    }
    
    //MARK: Collection View
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("collectionCell", forIndexPath: indexPath) as? EM_CollectionViewCell
        
        let images = EM_ImagesController.sharedInstance.images
        let image = images[indexPath.row]
        
        cell?.imageView.image = image.image
        
        return cell!
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        let images = EM_ImagesController.sharedInstance.images
        
        return images.count
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        //print(indexPath)
        
        let vc = ScrollAndZoomViewController() as UIViewController
        
        let cell: EM_CollectionViewCell = collectionView.cellForItemAtIndexPath(indexPath) as! EM_CollectionViewCell
        
        self.selectedImage = cell.imageView
        
        kImageViewToPresent = cell.imageView
        
        vc.transitioningDelegate = self
        
        presentViewController(vc, animated: true) { () -> Void in
            
            
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
