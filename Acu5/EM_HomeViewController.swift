//
//  ViewController.swift
//  Acu5
//
//  Created by Eric Mead on 1/2/16.
//  Copyright © 2016 Eric Mead. All rights reserved.
//

import UIKit
import CoreData

// A delay function
func delay(seconds seconds: Double, completion:()->()) {
    let popTime = dispatch_time(DISPATCH_TIME_NOW, Int64( Double(NSEC_PER_SEC) * seconds ))
    
    dispatch_after(popTime, dispatch_get_main_queue()) {
        completion()
    }
}

class EM_HomeViewController: UIViewController {

    var data: String?
    let bgView = UIView()
    let button1 = UIButton()
    let button2 = UIButton()
    
    let hamburgerButton = UIButton()
    let popUpFromHamburger = UIView()
    
    let dismissButtonForHamburgerPopup = UIButton()
    let popUpButton1 = UIButton()
    let popUpButton2 = UIButton()
    let popUpButton3 = UIButton()
    let popUpButton4 = UIButton()
    let popUpButton5 = UIButton()
    let popUpButton6 = UIButton()
    let popUpButton7 = UIButton()
    let popUpButton8 = UIButton()
    
    let popUpButtonTitles = ["Charts", "Advanced", "Settings", "More"]
    
    let yinYang1 = UIImageView()
    let yinYang2 = UIImageView()
    
    let status = UIImageView(image: UIImage(named: "banner"))
    let label = UILabel()
    let messages = ["AcuBuddy 5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layoutBackground()
        
        setUpHamburgerButton()
        
        setUpYinYang()
        
        //playMovieBg()
        
        UIView.animateWithDuration(4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: [.CurveEaseIn], animations: { () -> Void in
            self.yinYang1.alpha = 1
            self.yinYang2.alpha = 1
            self.yinYang1.center.y += self.view.bounds.height
            self.yinYang2.center.y -= self.view.bounds.height
            
            }, completion: nil)
        
        status.hidden = true
        status.center.x = self.view.center.x
        status.center.y = 60
        view.addSubview(status)
        
        label.frame = CGRect(x: 0.0, y: 0.0, width: status.frame.size.width, height: status.frame.size.height)
        label.font = UIFont(name: "HelveticaNeue", size: 18.0)
        label.textColor = UIColor(red: 0.89, green: 0.38, blue: 0.0, alpha: 1.0)
        label.textAlignment = .Center
        status.addSubview(label)
   
    }
    
    func playMovieBg(){
        
        let filePath = NSBundle.mainBundle().pathForResource("railway", ofType: "gif")
        let gif = NSData(contentsOfFile: filePath!)
        
        let webViewBG = UIWebView()
        
        webViewBG.frame.size = CGSize(width: self.view.frame.size.width, height: self.view.frame.size.height)
        webViewBG.center = self.view.center
        webViewBG.alpha = 1
        webViewBG.loadData(gif!, MIMEType: "image/gif", textEncodingName: String(), baseURL: NSURL())
        webViewBG.userInteractionEnabled = false;
        self.view.addSubview(webViewBG)
        
        
        let filter = UIView()
        filter.frame = self.view.frame
        filter.backgroundColor = UIColor.blackColor()
        filter.alpha = 0.05
        self.view.addSubview(filter)

        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        showMessages(0, arrayOfMessages: messages)
        
        UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: { () -> Void in
            
                self.button1.center.x += self.view.bounds.width
            
            }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: { () -> Void in
            
            self.button2.center.x += self.view.bounds.width
            
            }, completion: { _ in
                self.rotateBy(self.yinYang1)
                self.rotateBy(self.yinYang2)
        })
        
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = true
        setUpButtons()
     
     
     
    }
    
    
    func layoutBackground(){
        
        bgView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        bgView.backgroundColor = UIColor.homeBg()
        self.view.addSubview(bgView)
        
    }
    
    func setUpButtons(){
        
        //Button1
        button1.frame.size = CGSize(width: 300, height: 100)
        button1.center.x = self.view.center.x
        button1.center.y = self.view.center.y + button1.frame.size.height + 20
        button1.backgroundColor = UIColor.homeButton1()
        button1.setTitle("Points", forState: .Normal)
        button1.accessibilityIdentifier = "button1"
        button1.addTarget(self, action: "buttonTappedHandler:", forControlEvents: .TouchUpInside)
        self.view.addSubview(button1)
        
        //Button2
        button2.frame.size = CGSize(width: 300, height: 100)
        button2.center.x = self.view.center.x
        button2.center.y = self.button1.center.y + button1.frame.size.height + 10
        button2.backgroundColor = UIColor.homeButton2()
        button2.setTitle("Herbs", forState: .Normal)
        button2.accessibilityIdentifier = "button2"
        button2.addTarget(self, action: "buttonTappedHandler:", forControlEvents: .TouchUpInside)
        self.view.addSubview(button2)
        
        let buttons = [button1, button2]
        
        for button in buttons {
            
            button.layer.cornerRadius = 15
            button.layer.borderColor = UIColor.homeButtonBorderColor().CGColor
            button.layer.borderWidth = 1
            button.setTitleColor(UIColor.homeButtonTitleColor(), forState: .Normal)
        }
        
        button1.center.x -= self.view.bounds.width
        button2.center.x -= self.view.bounds.width
        
    }
    
    func setUpYinYang(){
        let fullRotation = CGFloat(M_PI * 2)
        yinYang1.image = UIImage(named: "yinYang1")
        yinYang2.image = UIImage(named: "yinYang2")
        yinYang1.frame.size = CGSize(width: 100, height: 100)
        yinYang2.frame.size = CGSize(width: 100, height: 100)
        yinYang1.center = self.view.center
        view.addSubview(yinYang1)
        yinYang2.center = self.view.center
        view.addSubview(yinYang2)
        yinYang1.center.y -= self.view.bounds.height
        yinYang2.center.y += self.view.bounds.height
        yinYang1.transform = CGAffineTransformMakeRotation(1/2 * fullRotation)
        yinYang2.transform = CGAffineTransformMakeRotation(1/2 * fullRotation)
        self.yinYang1.alpha = 0
        self.yinYang2.alpha = 0
    }
    
    func buttonTappedHandler(sender: UIButton){
        
       
        if sender.titleLabel?.text == "Points" {
            print("points")
            self.data = "Points"
            performSegueWithIdentifier("toTableView", sender: self)
        }
        
        if sender.titleLabel?.text == "Herbs" {
            print("herbs")
            self.data = "Herbs"
            performSegueWithIdentifier("toTableView", sender: self)
        }
        
        if sender.titleLabel?.text == "Charts" {
            print("charts")
  
        }
        
        if sender.titleLabel?.text == "Settings" {
            print("settings")
    
        }
        
        if sender.titleLabel?.text == "Advanced" {
            print("advanced")
           
        }
        
        if sender.titleLabel?.text == "More" {
            print("more")
        
        }
        
    }
    
    func deleteCoreData() {
        
        let classObjectsToBeDeleted = ["Herb", "Point", "CDImage"]
        
        for thing in classObjectsToBeDeleted {
            let fetchRequest = NSFetchRequest(entityName: thing)
            let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
            
            do { try Stack.sharedStack.managedObjectContext.executeRequest(deleteRequest)
            } catch _ as NSError {
                print("error deleting batch")
                return
            }
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toTableView" {
            print("to table view")
            if let mcvc: EM_MainCollectionViewController = segue.destinationViewController as? EM_MainCollectionViewController{
                
                    mcvc.data = self.data
            
                }
            
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


extension EM_HomeViewController {
    //Hamburger Button
    func setUpHamburgerButton(){
        
        hamburgerButton.frame = CGRect(x: self.view.bounds.width - 60, y: 30, width: 50, height: 50)
        hamburgerButton.setImage((UIImage(named: "Hamburger")), forState: .Normal)
        hamburgerButton.addTarget(self, action: "hamburgerButtonTapped", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(hamburgerButton)
        
        self.popUpFromHamburger.frame = CGRect(x: (self.view.bounds.width), y: 50, width: (self.view.bounds.width/3) * 2, height: self.view.bounds.height / 3)
        popUpFromHamburger.alpha = 0
        popUpFromHamburger.layer.cornerRadius = 10
        popUpFromHamburger.backgroundColor = UIColor.homePopUpView()
        view.addSubview(popUpFromHamburger)
        
        popUpFromHamburger.hidden = true
        
        self.setUpPopUpButtonsFromHamburger()
        
    }
    
    @IBAction func hamburgerButtonTapped(){
        
        
        if popUpFromHamburger.hidden == true {
            popUpFromHamburger.hidden = false
            hamburgerButton.hidden = true
            self.view.bringSubviewToFront(popUpFromHamburger)
            
            UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: { () -> Void in
                self.popUpFromHamburger.frame = CGRect(x: (self.view.bounds.width/3) + 10, y: 50, width: (self.view.bounds.width/3) * 2 + 10, height: self.view.bounds.height / 3)
                self.popUpFromHamburger.alpha = 1
                }, completion: { _ in
                    
                    
            })
            
            
        } else {
            
            UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: { () -> Void in
                self.popUpFromHamburger.frame = CGRect(x: (self.view.bounds.width), y: 50, width: (self.view.bounds.width/3) * 2 + 10, height: self.view.bounds.height / 3)
                self.popUpFromHamburger.alpha = 1
                }, completion: { _ in
                    self.popUpFromHamburger.hidden = true
                   
            })
            
        }
        
    }
    
    func setUpPopUpButtonsFromHamburger(){
        
        let offsetX = CGFloat(5)
        let offsetY = CGFloat(25)
        let width = popUpFromHamburger.frame.size.width - offsetX - 10
        let height = popUpFromHamburger.frame.size.height / 4 - ((offsetY + 5)/4)
        
        
        let popUpButtons = [dismissButtonForHamburgerPopup ,popUpButton1, popUpButton2, popUpButton3, popUpButton4]
        
        dismissButtonForHamburgerPopup.frame.origin.y = 0
        
        popUpButton1.frame.origin.y = 0 + offsetY
        popUpButton2.frame.origin.y = height + offsetY
        popUpButton3.frame.origin.y = height * 2 + offsetY
        popUpButton4.frame.origin.y = height * 3 + offsetY
        
        
        dismissButtonForHamburgerPopup.addTarget(self, action: "dismissButtonForHamburgerPopupTapped", forControlEvents: .TouchUpInside)
        popUpButton1.addTarget(self, action: "buttonTappedHandler:", forControlEvents: .TouchUpInside)
        popUpButton2.addTarget(self, action: "buttonTappedHandler:", forControlEvents: .TouchUpInside)
        popUpButton3.addTarget(self, action: "buttonTappedHandler:", forControlEvents: .TouchUpInside)
        popUpButton4.addTarget(self, action: "buttonTappedHandler:", forControlEvents: .TouchUpInside)
       
        dismissButtonForHamburgerPopup.setTitle("X", forState: .Normal)
        popUpButton1.setTitle("button1", forState: .Normal)
        popUpButton2.setTitle("button2", forState: .Normal)
        popUpButton3.setTitle("button3", forState: .Normal)
        popUpButton4.setTitle("button4", forState: .Normal)
     
        
        for button in popUpButtons {
            
            button.frame.size = CGSize(width: width, height: height)
            button.backgroundColor = UIColor.homePopUpButtons()
            button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.whiteColor().CGColor
            button.frame.origin.x = offsetX
            button.alpha = 1
            button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
            popUpFromHamburger.addSubview(button)
        }
        dismissButtonForHamburgerPopup.frame.size = CGSize(width: width * 1/7, height: height * 1/3)
        dismissButtonForHamburgerPopup.backgroundColor = UIColor.homePopUpDismissButton()
        dismissButtonForHamburgerPopup.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        dismissButtonForHamburgerPopup.layer.borderWidth = 0.5
        dismissButtonForHamburgerPopup.layer.borderColor = UIColor.blueColor().CGColor
        
        self.setupPopUpButtonTitles()
  
        
    }
    
    func dismissButtonForHamburgerPopupTapped() {
        
        UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: { () -> Void in
            self.popUpFromHamburger.frame = CGRect(x: (self.view.bounds.width), y: 50, width: (self.view.bounds.width/3) * 2 + 10, height: self.view.bounds.height / 3)
            self.popUpFromHamburger.alpha = 1
            }, completion: { _ in
                self.popUpFromHamburger.hidden = true
                self.hamburgerButton.hidden = false
        })
       
        
    }
    
    func  setupPopUpButtonTitles(){
        
        let buttons = [self.popUpButton1, self.popUpButton2, self.popUpButton3, self.popUpButton4]
        
        let array = self.popUpButtonTitles
        
        var i = 0
        
        for title in array {
            
            let button = buttons[i]
            button.setTitle(title, forState: .Normal)
            i++
        }
        
    }
}

extension EM_HomeViewController {
    //Animations
    func rotateBy(thisView: UIView){
        
        let duration = 45.0
        let delay = 0.0
        _ = [UIViewKeyframeAnimationOptions.CalculationModePaced, UIViewKeyframeAnimationOptions.Repeat]
        let fullRotation = CGFloat(M_PI * 2)
        
        
        UIView.animateKeyframesWithDuration(duration, delay: delay, options: [UIViewKeyframeAnimationOptions.CalculationModePaced, UIViewKeyframeAnimationOptions.Repeat], animations: {
            // each keyframe needs to be added here
            // within each keyframe the relativeStartTime and relativeDuration need to be values between 0.0 and 1.0
            
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 1/3, animations: {
                // start at 0.00s (5s × 0)
                // duration 1.67s (5s × 1/3)
                // end at   1.67s (0.00s + 1.67s)
                thisView.transform = CGAffineTransformMakeRotation(-1/3 * fullRotation)
            })
            UIView.addKeyframeWithRelativeStartTime(1/3, relativeDuration: 1/3, animations: {
                thisView.transform = CGAffineTransformMakeRotation(2/3 * fullRotation)
            })
            UIView.addKeyframeWithRelativeStartTime(2/3, relativeDuration: 1/3, animations: {
                thisView.transform = CGAffineTransformMakeRotation(-3/3 * fullRotation)
            })
            
            }, completion: {finished in
                
                //self.rotateBy(thisView)
                // any code entered here will be applied
                // once the animation has completed
                
        })
    }
    
    func moveButtonsByCurve(view: UIView){
        
        // now create a bezier path that defines our curve
        // the animation function needs the curve defined as a CGPath
        // but these are more difficult to work with, so instead
        // we'll create a UIBezierPath, and then create a
        // CGPath from the bezier when we need it
        
        // we add the animation to the squares 'layer' property
    
            let path = UIBezierPath()
            path.moveToPoint(view.center)
            path.addCurveToPoint(CGPoint(x: 0, y: 300), controlPoint1: CGPoint(x: 0, y: 150), controlPoint2: CGPoint(x: 0, y: 0))
            
            // create a new CAKeyframeAnimation that animates the objects position
            let anim = CAKeyframeAnimation(keyPath: "position")
            
            // set the animations path to our bezier curve
            anim.path = path.CGPath
            
            anim.duration = 3
            
            view.layer.addAnimation(anim, forKey: "animate position along path")
       
        
    }

}

extension EM_HomeViewController {
    
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



