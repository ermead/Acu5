//
//  ScrollAndZoom.swift
//  Acu5
//
//  Created by Eric Mead on 1/2/16.
//  Copyright © 2016 Eric Mead. All rights reserved.
//


import UIKit

var kImageViewToPresent: UIImageView?

class ScrollAndZoomViewController: UIViewController {
    
    
    var textField: UITextField!
    var imageView: UIImageView!
    var scrollView: UIScrollView!
    var originLabel: UILabel!
    var button: UIButton!
    var thisImage: UIImage!
    var button1: UIButton!
    var button2: UIButton!
    var button3: UIButton!
    
    var arrayOfImages: [UIImage] = []
    var i: Int = -1
    
    @IBAction func buttonTapped(sender: AnyObject) {
        
        i++
        
        self.imageView.image = arrayOfImages[i]
        
        
        if self.i >= (arrayOfImages.count - 1) {
            self.i = -1
        }
        
    }
    
    
    @IBAction func buttonTapped2(sender: AnyObject) {
        //Print to get location code
        
        print("let \(textField.text!): (CGPoint, CGFloat, CGRect, CGPoint) = (SVoffset: CGPoint\(scrollView.contentOffset), SVzoom: CGFloat(\(scrollView.zoomScale)), SVBounds: CGRect\(scrollView.bounds), ImageViewCenter: CGPoint\(imageView.center))")
        
        //print("\(originLabel.text!)")
        
        print("\n")
        
    }
    
    @IBAction func buttonTapped3(sender: AnyObject) {
        //go to location code coordinates
        
        let thisLocation: (CGPoint, CGFloat, CGRect, CGPoint) = EM_LocationCoordinatesForImages().shoulderPoin1
        
        scrollView.contentOffset = thisLocation.0
        scrollView.zoomScale = thisLocation.1
        scrollView.bounds = thisLocation.2
        imageView.center = thisLocation.3
        
    }
    
    @IBAction func buttonTapped4(sender: AnyObject) {
        //dismiss view
        presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let images = EM_ImagesController.sharedInstance.images
        
        for image in images {
            
            arrayOfImages.append(image.image!)
        }
        
        thisImage = kImageViewToPresent?.image
        
        imageView = UIImageView(image: thisImage)
        
        //Optional("Offset: (2230.0, 835.333333333333)\nZoom: 0.881515817624876")
        
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        scrollView.backgroundColor = UIColor.blackColor()
        scrollView.contentSize = imageView.bounds.size
        
        scrollView.addSubview(imageView)
        
        view.addSubview(scrollView)
        
        
        button = UIButton.init(frame: CGRect(x: 150 + 120, y: 20, width: 120, height: 50))
        button.setTitle("Switch Pics", forState: .Normal)
        button.backgroundColor = UIColor.whiteColor()
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button.addTarget(self, action: "buttonTapped:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(button)
        
        button1 = UIButton.init(frame: CGRect(x: 10, y: 20, width: 120, height: 50))
        button1.setTitle("Print Settings", forState: .Normal)
        button1.backgroundColor = UIColor.whiteColor()
        button1.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button1.addTarget(self, action: "buttonTapped2:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(button1)
        
        button2 = UIButton.init(frame: CGRect(x: 140, y: 20, width: 120, height: 50))
        button2.setTitle("Go To Point", forState: .Normal)
        button2.backgroundColor = UIColor.whiteColor()
        button2.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button2.addTarget(self, action: "buttonTapped3:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(button2)
        
        button3 = UIButton.init(frame: CGRect(x: 140, y: 70, width: 120, height: 50))
        button3.setTitle("Done", forState: .Normal)
        button3.backgroundColor = UIColor.whiteColor()
        button3.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button3.addTarget(self, action: "buttonTapped4:", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(button3)
        
        textField = UITextField.init(frame: CGRect(x: 0, y: view.bounds.height - 70, width: view.bounds.width, height: 40))
        textField.backgroundColor = UIColor.whiteColor()
        textField.textColor = UIColor.blackColor()
        textField.text = "enter variable"
        view.addSubview(textField)
        
        originLabel = UILabel(frame: CGRect(x: 20, y: view.bounds.height - 40, width: 0, height: 0))
        originLabel.backgroundColor = UIColor.whiteColor()
        originLabel.textColor = UIColor.blackColor()
        originLabel.numberOfLines = 0
        view.addSubview(originLabel)
        
        scrollView.delegate = self
        
        setZoomParametersForSize(scrollView.bounds.size)
        scrollView.zoomScale = scrollView.minimumZoomScale
        recenterImage()
        
        
        updateLabel()
        
        let lineWidth: CGFloat = 2.0
        let verticalLine = UIView(frame: CGRect(x: CGRectGetMidX(view.bounds), y: 0, width: lineWidth, height: CGRectGetHeight(view.bounds)))
        verticalLine.backgroundColor = UIColor.redColor().colorWithAlphaComponent(0.5)
        verticalLine.autoresizingMask = [.FlexibleHeight, .FlexibleLeftMargin, .FlexibleRightMargin]
        view.addSubview(verticalLine)
        
        let horizontalLine = UIView(frame: CGRect(x: 0, y: CGRectGetMidY(view.bounds), width: CGRectGetWidth(view.bounds), height: lineWidth))
        horizontalLine.backgroundColor = UIColor.redColor().colorWithAlphaComponent(0.5)
        horizontalLine.autoresizingMask = [.FlexibleWidth, .FlexibleTopMargin, .FlexibleBottomMargin]
        view.addSubview(horizontalLine)
    }
    
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        let centerPoint = CGPoint(x: scrollView.contentOffset.x + CGRectGetWidth(scrollView.bounds) / 2,
            y: scrollView.contentOffset.y + CGRectGetHeight(scrollView.bounds) / 2)
        
        coordinator.animateAlongsideTransition({ (context) -> Void in
            self.scrollView.contentOffset = CGPoint(x: centerPoint.x - size.width / 2,
                y: centerPoint.y - size.height / 2)
            }, completion: nil)
    }
    
    func setZoomParametersForSize(scrollViewSize: CGSize) {
        let imageSize = imageView.bounds.size
        
        let widthScale = scrollViewSize.width / imageSize.width
        let heightScale = scrollViewSize.height / imageSize.height
        let minScale = min(widthScale, heightScale)
        
        scrollView.minimumZoomScale = minScale
        scrollView.maximumZoomScale = 4.0
    }
    
    func recenterImage() {
        let scrollViewSize = scrollView.bounds.size
        let imageSize = imageView.frame.size
        
        let horizontalSpace = imageSize.width < scrollViewSize.width ?
            (scrollViewSize.width - imageSize.width) / 2 : 0
        let verticalSpace = imageSize.height < scrollViewSize.height ?
            (scrollViewSize.height - imageSize.height) / 2 : 0
        
        scrollView.contentInset = UIEdgeInsets(top: verticalSpace,
            left: horizontalSpace,
            bottom: verticalSpace,
            right: horizontalSpace)
    }
    
    override func viewWillLayoutSubviews() {
        setZoomParametersForSize(scrollView.bounds.size)
        if scrollView.zoomScale < scrollView.minimumZoomScale {
            scrollView.zoomScale = scrollView.minimumZoomScale
        }
        //recenterImage()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateLabel() {
        
        originLabel.text = "Offset: \(scrollView.contentOffset)\n" +
            "Zoom: \(scrollView.zoomScale)\n" + "Bounds: \(scrollView.bounds)\n" + "Frame: \(scrollView.frame)\n" + "ImageCenter: \(imageView.center)"
        
        originLabel.text = "scrollView.contentOffset = CGPoint\(scrollView.contentOffset)\n" +
            "scrollView.zoomScale = CGFloat\(scrollView.zoomScale)\n" +
            "scrollView.bounds = CGRect\(scrollView.bounds)\n" +
        "imageView.center = CGPoint\(imageView.center)\n"
        
        originLabel.font = UIFont.systemFontOfSize(8)
        
        originLabel.sizeToFit()
    }
    
    
}

// MARK: - UIScrollViewDelegate

extension ScrollAndZoomViewController: UIScrollViewDelegate {
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return self.imageView
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        //      updateLabel()
    }
    
    func scrollViewDidZoom(scrollView: UIScrollView) {
        //recenterImage()
        //     updateLabel()
    }
    
    
}
