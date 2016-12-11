//
//  ViewController.swift
//  Constraints
//
//  Created by Gabriel Theodoropoulos on 04/12/16.
//  Copyright © 2016 Appcoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var containerView1: UIView!
    
    var containerView2: UIView!
    
    var containerView3: UIView!
    
    var label1: UILabel!
    
    var label2: UILabel!
    
    var button1: UIButton!
    
    var button2: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        simpleView1()
        
//        simpleView2()
        
//        complexView1()
        
//        complexView2()
        
//        vflExample()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func simpleView1() {
        let myView = UIView()
        myView.backgroundColor = UIColor.black
        myView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(myView)
        
        let leading = NSLayoutConstraint(item: myView,
                                         attribute: .leading,
                                         relatedBy: .equal,
                                         toItem: self.view,
                                         attribute: .leading,
                                         multiplier: 1.0,
                                         constant: 50.0)
        
        let trailing = NSLayoutConstraint(item: myView,
                                          attribute: .trailing,
                                          relatedBy: .equal,
                                          toItem: self.view,
                                          attribute: .trailing,
                                          multiplier: 1.0,
                                          constant: -50.0)
        
        let top = NSLayoutConstraint(item: myView,
                                     attribute: .top,
                                     relatedBy: .equal,
                                     toItem: self.view,
                                     attribute: .top,
                                     multiplier: 1.0,
                                     constant: 100.0)
        
        let height = NSLayoutConstraint(item: myView,
                                        attribute: .height,
                                        relatedBy: .equal,
                                        toItem: nil,
                                        attribute: .notAnAttribute,
                                        multiplier: 1.0,
                                        constant: 120.0)
        
        
        /*
        let bottom = NSLayoutConstraint(item: myView,
                                        attribute: .bottom,
                                        relatedBy: .equal,
                                        toItem: self.view,
                                        attribute: .bottomMargin,
                                        multiplier: 1.0,
                                        constant: -250.0)
        */
        
        /*
        self.view.addConstraint(leading)
        self.view.addConstraint(trailing)
        self.view.addConstraint(top)
        self.view.addConstraint(height)
        */
 
        NSLayoutConstraint.activate([leading, trailing, top, height])
        // NSLayoutConstraint.activate([leading, trailing, top, bottom])
    }
    
    
    func simpleView2() {
        let myView = UIView()
        myView.backgroundColor = UIColor.black
        self.view.addSubview(myView)
        
        myView.translatesAutoresizingMaskIntoConstraints = false
        
        let centerHorizontally = NSLayoutConstraint(item: myView,
                                                    attribute: .centerX,
                                                    relatedBy: .equal,
                                                    toItem: self.view,
                                                    attribute: .centerX,
                                                    multiplier: 1.0,
                                                    constant: 0.0)
        
        let centerVertically = NSLayoutConstraint(item: myView,
                                                  attribute: .centerY,
                                                  relatedBy: .equal,
                                                  toItem: self.view,
                                                  attribute: .centerY,
                                                  multiplier: 1.0,
                                                  constant: 0.0)
        
        NSLayoutConstraint.activate([centerHorizontally, centerVertically])
        
        NSLayoutConstraint(item: myView,
                           attribute: .width,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute,
                           multiplier: 1.0,
                           constant: 120.0).isActive = true
        
        NSLayoutConstraint(item: myView,
                           attribute: .height,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute,
                           multiplier: 1.0,
                           constant: 70.0).isActive = true
    }
    
    
    func complexView1() {
        containerView1 = UIView()
        containerView1.backgroundColor = UIColor.black
        self.view.addSubview(containerView1)
        containerView1.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: containerView1, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: containerView1, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 80.0).isActive = true
        NSLayoutConstraint(item: containerView1, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 150.0).isActive = true
        NSLayoutConstraint(item: containerView1, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 100.0).isActive = true
        
        
        button1 = UIButton(type: .custom)
        button1.backgroundColor = UIColor.orange
        button1.setTitle("@1x", for: .normal)
        button1.setTitleColor(.white, for: .normal)
        button1.translatesAutoresizingMaskIntoConstraints = false
        containerView1.addSubview(button1)
        
        let centerHorizontally = NSLayoutConstraint(item: button1, attribute: .centerX, relatedBy: .equal, toItem: containerView1, attribute: .centerX, multiplier: 1.0, constant: 0.0)
        let top = NSLayoutConstraint(item: button1, attribute: .top, relatedBy: .equal, toItem: containerView1, attribute: .top, multiplier: 1.0, constant: 10.0)
        let width = NSLayoutConstraint(item: button1, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 45.0)
        let height = NSLayoutConstraint(item: button1, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 22.0)
        
        containerView1.addConstraint(centerHorizontally)
        containerView1.addConstraint(top)
        containerView1.addConstraint(width)
        containerView1.addConstraint(height)
        
        
        button2 = UIButton(type: .custom)
        button2.backgroundColor = UIColor.orange
        button2.setTitle("@2x", for: .normal)
        button2.setTitleColor(.white, for: .normal)
        button2.translatesAutoresizingMaskIntoConstraints = false
        containerView1.addSubview(button2)
        
        NSLayoutConstraint(item: button2, attribute: .centerX, relatedBy: .equal, toItem: button1, attribute: .centerX, multiplier: 1.0, constant: 0.0).isActive = true
        NSLayoutConstraint(item: button2, attribute: .top, relatedBy: .equal, toItem: button1, attribute: .bottom, multiplier: 1.0, constant: 10.0).isActive = true
        NSLayoutConstraint(item: button2, attribute: .width, relatedBy: .equal, toItem: button1, attribute: .width, multiplier: 2.0, constant: 0.0).isActive = true
        NSLayoutConstraint(item: button2, attribute: .height, relatedBy: .equal, toItem: button1, attribute: .height, multiplier: 1.5, constant: 0.0).isActive = true
    }
    
    
    func complexView2() {
        containerView2 = UIView()
        containerView2.backgroundColor = UIColor.black
        containerView2.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(containerView2)
        
        NSLayoutConstraint(item: containerView2, attribute: .left, relatedBy: .equal, toItem: containerView1, attribute: .left, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: containerView2, attribute: .top, relatedBy: .equal, toItem: containerView1, attribute: .bottom, multiplier: 1.0, constant: 25.0).isActive = true
        NSLayoutConstraint(item: containerView2, attribute: .width, relatedBy: .equal, toItem: containerView1, attribute: .width, multiplier: 1.5, constant: 0).isActive = true
        NSLayoutConstraint(item: containerView2, attribute: .height, relatedBy: .equal, toItem: containerView1, attribute: .height, multiplier: 1.5, constant: 0).isActive = true
        
        
        
        containerView3 = UIView()
        containerView3.backgroundColor = UIColor.orange
        containerView3.translatesAutoresizingMaskIntoConstraints = false
        containerView2.addSubview(containerView3)
        
        NSLayoutConstraint(item: containerView3, attribute: .centerX, relatedBy: .equal, toItem: containerView2, attribute: .centerX, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: containerView3, attribute: .centerY, relatedBy: .equal, toItem: containerView2, attribute: .centerY, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: containerView3, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 180).isActive = true
        NSLayoutConstraint(item: containerView3, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 100.0).isActive = true
        
        
        
        label1 = UILabel()
        label1.backgroundColor = UIColor.blue
        label1.text = "L1"
        label1.textColor = UIColor.white
        label1.textAlignment = .center
        label1.translatesAutoresizingMaskIntoConstraints = false
        containerView3.addSubview(label1)
        
        let leading = NSLayoutConstraint(item: label1, attribute: .leading, relatedBy: .equal, toItem: containerView3, attribute: .leading, multiplier: 1.0, constant: 20.0)
        let top1 = NSLayoutConstraint(item: label1, attribute: .top, relatedBy: .equal, toItem: containerView3, attribute: .top, multiplier: 1.0, constant: 20.0)
        let width1 = NSLayoutConstraint(item: label1, attribute: .width, relatedBy: .equal, toItem: button1, attribute: .width, multiplier: 1.0, constant: 0)
        let height1 = NSLayoutConstraint(item: label1, attribute: .height, relatedBy: .equal, toItem: label1, attribute: .width, multiplier: 1.2, constant: 0)
        
        containerView2.addConstraint(leading)
        containerView2.addConstraint(top1)
        self.view.addConstraint(width1)
        containerView3.addConstraint(height1)
        
        
        
        label2 = UILabel()
        label2.backgroundColor = UIColor.blue
        label2.text = "L2"
        label2.textColor = UIColor.white
        label2.textAlignment = .center
        label2.translatesAutoresizingMaskIntoConstraints = false
        containerView3.addSubview(label2)
        
        let trailing = NSLayoutConstraint(item: label2, attribute: .trailing, relatedBy: .equal, toItem: containerView3, attribute: .trailing, multiplier: 1.0, constant: -20.0)
        let top2 = NSLayoutConstraint(item: label2, attribute: .top, relatedBy: .equal, toItem: label1, attribute: .top, multiplier: 1.0, constant: 0.0)
        let width2 = NSLayoutConstraint(item: label2, attribute: .width, relatedBy: .equal, toItem: label1, attribute: .width, multiplier: 1.0, constant: 0.0)
        let height2 = NSLayoutConstraint(item: label2, attribute: .height, relatedBy: .equal, toItem: button2, attribute: .height, multiplier: 1.0, constant: 0.0)
        
        NSLayoutConstraint.activate([trailing, top2, width2, height2])
    }
    
    
    func vflExample() {
        containerView1 = UIView()
        containerView1.backgroundColor = UIColor.black
        containerView1.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(containerView1)
        
        containerView2 = UIView()
        containerView2.backgroundColor = UIColor.orange
        containerView2.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(containerView2)
        
        
        let descHorizontal = "H:[containerView1(200)]"
        let descVertical = "V:[containerView1(150)]"

//        let descHorizontal = "H:|-[containerView1(200)]"
//        let descVertical = "V:|-100-[containerView1(150)]"

//        let descHorizontal = "H:|-40-[containerView1]-100-|"
//        let descVertical = "V:[containerView1(40)]-120-|"
        
//        let leftDist: CGFloat = 150.0
//        let rightDist: CGFloat = 25.0
//        let descHorizontal = "H:|-distanceLeft-[containerView1]-distanceRight-|"
//        let descVertical = "V:[containerView1(40)]-120-|"
//        let metrics = ["distanceLeft": leftDist, "distanceRight": rightDist]
        
        let viewsDict = ["containerView1": containerView1]
        
//        let descHorizontal = "H:|-40-[containerView1(150)]-35-[containerView2]-|"
//        let descVertical = "V:[containerView1(85)]-200-|"
//        let descVertical2 = "V:[containerView2(==containerView1)]"
//        let viewsDict = ["containerView1": containerView1, "containerView2": containerView2]
        
        let horizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: descHorizontal,
                                                                   options: NSLayoutFormatOptions(rawValue: 0),
                                                                   metrics: nil,
                                                                   views: viewsDict)

//        let horizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: descHorizontal,
//                                                                   options: NSLayoutFormatOptions(rawValue: 0),
//                                                                   metrics: metrics,
//                                                                   views: viewsDict)
        
//        let horizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: descHorizontal,
//                                                                   options: .alignAllBottom,
//                                                                   metrics: nil,
//                                                                   views: viewsDict)
        
        
        let verticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: descVertical,
                                                                 options: NSLayoutFormatOptions(rawValue: 0),
                                                                 metrics: nil,
                                                                 views: viewsDict)
        
//        let verticalConstraints2 = NSLayoutConstraint.constraints(withVisualFormat: descVertical2,
//                                                                  options: NSLayoutFormatOptions(rawValue: 0),
//                                                                  metrics: nil,
//                                                                  views: viewsDict)
        
        self.view.addConstraints(horizontalConstraints)
        self.view.addConstraints(verticalConstraints)
//        self.view.addConstraints(verticalConstraints2)
    }
}

