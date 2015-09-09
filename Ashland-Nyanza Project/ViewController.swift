//
//  ViewController.swift
//  Ashland-Nyanza Project
//
//  Created by Lorraine Fryer on 8/17/15.
//  Copyright (c) 2015 Lorraine Fryer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var projectBanner: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        loadprojectBanner()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func loadprojectBanner() {
        let anProjectImage = UIImage(named: "AN Project Banner.png")
        projectBanner.image = anProjectImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
    }
    
    @IBAction func gotoWebsite() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://www.ashlandnyanzaproject.com/")!)
    }
}

