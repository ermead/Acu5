//
//  ViewController.swift
//  Acu5
//
//  Created by Eric Mead on 1/2/16.
//  Copyright © 2016 Eric Mead. All rights reserved.
//

import UIKit

class EM_HomeViewController: UIViewController {

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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        layoutBackground()
        setUpHamburgerButton()
        setUpButtons()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = true
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
        button1.center.y = self.view.center.y
        button1.backgroundColor = UIColor.homeButton1()
        button1.setTitle("Points", forState: .Normal)
        button1.accessibilityIdentifier = "button1"
        button1.addTarget(self, action: "buttonTappedHandler:", forControlEvents: .TouchUpInside)
        self.view.addSubview(button1)
        
        //Button2
        button2.frame.size = CGSize(width: 300, height: 100)
        button2.center.x = self.view.center.x
        button2.center.y = self.view.center.y + button1.frame.size.height + 10
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
        
        
    }
    
    func buttonTappedHandler(sender: AnyObject){
        
        if sender.accessibilityIdentifier == "button1" {
            print("button1")
            performSegueWithIdentifier("toTableView", sender: self)
        }
        
        if sender.accessibilityIdentifier == "button2" {
            print("button2")
            performSegueWithIdentifier("toTableView", sender: self)
        }
        
    }
    
    func deleteCoreData(){
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toTableView" {
            
            print("to table view")
            
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension EM_HomeViewController {
    
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
        popUpButton1.addTarget(self, action: "popUpButton1Tapped", forControlEvents: .TouchUpInside)
        popUpButton2.addTarget(self, action: "popUpButton2Tapped", forControlEvents: .TouchUpInside)
        popUpButton3.addTarget(self, action: "popUpButton3Tapped", forControlEvents: .TouchUpInside)
        popUpButton4.addTarget(self, action: "popUpButton4Tapped", forControlEvents: .TouchUpInside)
       
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



