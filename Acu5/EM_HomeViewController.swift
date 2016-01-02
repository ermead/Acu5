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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layoutBackground()
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
        button1.frame.size = CGSize(width: 200, height: 50)
        button1.center.x = self.view.center.x
        button1.center.y = self.view.center.y
        button1.backgroundColor = UIColor.homeButton1()
        button1.setTitle("Points", forState: .Normal)
        button1.accessibilityIdentifier = "button1"
        button1.addTarget(self, action: "buttonTappedHandler:", forControlEvents: .TouchUpInside)
        self.view.addSubview(button1)
        
        //Button2
        button2.frame.size = CGSize(width: 200, height: 50)
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

