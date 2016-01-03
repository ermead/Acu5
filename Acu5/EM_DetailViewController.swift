//
//  EM_DetailViewController.swift
//  Acu5
//
//  Created by Eric Mead on 1/2/16.
//  Copyright © 2016 Eric Mead. All rights reserved.
//

import UIKit
var kArray: [AnyObject] = []
var kEntry: AnyObject?

class EM_DetailViewController: UIViewController, UIScrollViewDelegate, UICollectionViewDataSource, UICollectionViewDelegate {
    let nc = NSNotificationCenter.defaultCenter()
    let transition = PopAnimator()
    // set this image when you want to use the pop animator to expand it.
    
    var selectedImage: UIImageView?
    
    var entry: AnyObject?
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    var label1 = UILabel()
    var label2 = UILabel()
    var label3 = UILabel()
    var label4 = UILabel()
    var label5 = UILabel()
    var label6 = UILabel()
    var label7 = UILabel()
    var label8 = UILabel()
    var label9 = UILabel()
    
    let dismissButton = UIButton()
    
    /*
    label1
    label2
    label3
    label4
    label5
    label6
    label7
    label8
    label9
    */
    
    var text1 = "Lorem ipsum"
    var text2 = "Lorem ipsum"
    var text3 = "Lorem ipsum"
    var text4 = "In vel."
    var text5 = "Lorem ipsum"
    var text6 = "Lorem ipsum"
    var text7 = "Lorem ipsum"
    var text8 = "In vel."
    var text9 = "In vel."
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationController?.navigationBarHidden = false
        
        entry = kEntry
        
        setUpEntry()
        
        setUpLabels()
        
        setUpDismissButton(self.view)
        
  
        // Do any additional setup after loading the view.
    }
    

    
    func setUpEntry(){
        
        if let entry = entry as? Point {
            
            /*Point(pinyinName: <#T##String?#>, englishName: <#T##String?#>, chineseCharacter: <#T##String?#>, pointOnMeridian: <#T##String?#>, channelAbrev: <#T##String?#>, number: <#T##String?#>, specialCategories: <#T##String?#>, locationDescription: <#T##String?#>, channel: <#T##String?#>, uses: <#T##String?#>, meeting: <#T##String?#>, actions: <#T##String?#>, needling: <#T##String?#>, warning: <#T##String?#>, neuroAnatomy: <#T##String?#>, triggerPointAssociations: <#T##String?#>, imageName: <#T##String?#>, images: <#T##NSSet?#>, context: <#T##NSManagedObjectContext#>)*/
            
            text1 = entry.channelAbrev! + "-" + entry.number!
            label1.textAlignment = NSTextAlignment.Center
            text2 = entry.chineseCharacter!
            text3 = entry.pinyinName!
            text4 = entry.englishName!
            text5 = entry.locationDescription!
            text6 = entry.actions!
            text7 = entry.uses!
            text8 = entry.needling!
            text9 = entry.warning!
        }
        
        if let entry = entry as? Herb {
            
            /*Herb(pinyinName: <#T##String?#>, pharmName: <#T##String?#>, commonName: <#T##String?#>, botanicalName: <#T##String?#>, englishName: <#T##String?#>, chineseCharacter: <#T##String?#>, category: <#T##String?#>, temp: <#T##String?#>, meridians: <#T##String?#>, uses: <#T##String?#>, uses1: <#T##String?#>, earliestRecord: <#T##String?#>, gatheringInfo: <#T##String?#>, dosage: <#T##String?#>, majorFormulas: <#T##String?#>, images: <#T##NSSet?#>, context: <#T##NSManagedObjectContext#>)*/
            
            text1 = entry.pinyinName!
            label1.textAlignment = NSTextAlignment.Center
            text2 = entry.chineseCharacter!
            text3 = entry.pinyinName!
            text4 = entry.englishName!
            text5 = entry.botanicalName!
            text6 = entry.category!
            text7 = entry.temp!
            text8 = entry.uses!
            text9 = entry.uses1!
        }
        
    }
    


    
    override func viewWillAppear(animated: Bool) {
        
        label1.text = text1
        label2.text = text2
        label3.text = text3
        label4.text = text4
        label5.text = text5
        label6.text = text6
        label7.text = text7
        label8.text = text8
        label9.text = text9
        
        //setUpLabels()
        
      
    }
    
    override func viewDidAppear(animated: Bool) {
        
        if label1.alpha == 0 {
            
            bringLabels()
            
        }
        
        setUpLabelConstraints()
        
        collectionView.reloadData()
    }
    
    func setUpLabelConstraints(){
        
        let labels = [self.label1, self.label2, self.label3, self.collectionView, self.label4, self.label5, self.label6, self.label7, self.label8, self.label9]
        
        var constraints: [NSLayoutConstraint] = []
        
        for label in labels {
            
            let leading = NSLayoutConstraint(item: label, attribute: .Leading, relatedBy: .Equal, toItem: contentView, attribute: .Leading, multiplier: 1, constant: 10)
            
            let trailing = NSLayoutConstraint(item: label, attribute: .Trailing, relatedBy: .Equal, toItem: contentView, attribute: .Trailing, multiplier: 1, constant: -10)
            
            constraints.append(leading)
            constraints.append(trailing)
            
        }
        
        
        let topLabel = NSLayoutConstraint(item: label1, attribute: .Top, relatedBy: .Equal, toItem: contentView, attribute: .Top, multiplier: 1, constant: 60)
        
        let topLabel2 = NSLayoutConstraint(item: label2, attribute: .Top, relatedBy: .Equal, toItem: label1, attribute: .Bottom, multiplier: 1, constant: 10)
        
        let topLabel3 = NSLayoutConstraint(item: label3, attribute: .Top, relatedBy: .Equal, toItem: label2, attribute: .Bottom, multiplier: 1, constant: 10)
        
        let topLabel4 = NSLayoutConstraint(item: label4, attribute: .Top, relatedBy: .Equal, toItem: label3, attribute: .Bottom, multiplier: 1, constant: 10)
        
        let topCollectionView = NSLayoutConstraint(item: collectionView, attribute: .Top, relatedBy: .Equal, toItem: label4, attribute: .Bottom, multiplier: 1, constant: 10)
        
        let topLabel5 = NSLayoutConstraint(item: label5, attribute: .Top, relatedBy: .Equal, toItem: collectionView, attribute: .Bottom, multiplier: 1, constant: 10)
        
        let topLabel6 = NSLayoutConstraint(item: label6, attribute: .Top, relatedBy: .Equal, toItem: label5, attribute: .Bottom, multiplier: 1, constant: 10)
        
        let topLabel7 = NSLayoutConstraint(item: label7, attribute: .Top, relatedBy: .Equal, toItem: label6, attribute: .Bottom, multiplier: 1, constant: 10)
        
        let topLabel8 = NSLayoutConstraint(item: label8, attribute: .Top, relatedBy: .Equal, toItem: label7, attribute: .Bottom, multiplier: 1, constant: 10)
        
        let topLabel9 = NSLayoutConstraint(item: label9, attribute: .Top, relatedBy: .Equal, toItem: label8, attribute: .Bottom, multiplier: 1, constant: 10)
        
        let bottomLabel9 = NSLayoutConstraint(item: label9, attribute: .Bottom, relatedBy: .Equal, toItem: contentView, attribute: .Bottom, multiplier: 1, constant: -30)
        
        constraints.append(topLabel)
        constraints.append(topLabel2)
        constraints.append(topLabel3)
        constraints.append(topCollectionView)
        constraints.append(topLabel4)
        constraints.append(topLabel5)
        constraints.append(topLabel6)
        constraints.append(topLabel7)
        constraints.append(topLabel8)
        constraints.append(topLabel9)
        constraints.append(bottomLabel9)
        
        self.view.addConstraints(constraints)
        
    }
    
    func setUpLabels(){
        
        let labels = [self.label1, self.label2, self.label3, self.label4, self.label5, self.label6, self.label7, self.label8, self.label9]
        
        for label in labels {
            
            label.frame.size.height = label.requiredHeight()
            label.frame.size.width = self.contentView.frame.width
            label.textAlignment = .Center
            
        }
        collectionView.frame.size.height = 50
        collectionView.frame.size.width = self.contentView.frame.width
        
        
        contentView.addSubview(label1)
        contentView.addSubview(label2)
        contentView.addSubview(label3)
        contentView.addSubview(collectionView)
        contentView.addSubview(label4)
        contentView.addSubview(label5)
        contentView.addSubview(label6)
        contentView.addSubview(label7)
        contentView.addSubview(label8)
        contentView.addSubview(label9)
        
        for label in labels {
            
            label.center.x += self.view.bounds.width
            label.alpha = 0
            
        }
        
        collectionView.center.x += self.view.bounds.width
        collectionView.alpha = 0
    }
    
    func bringLabels(){
        
        let labels = [self.label1, self.label2, self.label3, self.collectionView, self.label4, self.label5, self.label6, self.label7, self.label8, self.label9]
        
        for label in labels {
            
            var delay = 0.1
            
            UIView.animateWithDuration(1, delay: delay, usingSpringWithDamping: 0.8, initialSpringVelocity: 1, options: [.CurveEaseInOut], animations: { () -> Void in
                
                label.center.x -= self.view.bounds.width
                label.alpha = 1
                delay += 0.5
                
                }, completion: nil )
            
        }
        
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
    
    func setUpDismissButton(view: UIView){
        
        dismissButton.frame = CGRect(x: 5, y: 15, width: 40, height: 40)
        dismissButton.setTitle("X", forState: .Normal)
        dismissButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        dismissButton.backgroundColor = UIColor.lightGrayColor()
        dismissButton.addTarget(self, action: "dismissButtonTapped:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(dismissButton)
    }
    
    @IBAction func dismissButtonTapped(sender: AnyObject){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
}

extension UILabel{
    
    func requiredHeight() -> CGFloat{
        
        let label:UILabel = UILabel(frame: CGRectMake(0, 0, self.frame.width, CGFloat.max))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.ByWordWrapping
        label.font = self.font
        label.text = self.text
        
        label.sizeToFit()
        
        return label.frame.height
    }
}

extension EM_DetailViewController: UIViewControllerTransitioningDelegate {
    
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

