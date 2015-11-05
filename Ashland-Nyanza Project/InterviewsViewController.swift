//
//  InterviewsViewController.swift
//  Ashland-Nyanza Project
//
//  Created by Lorraine Fryer on 11/3/15.
//  Copyright © 2015 Lorraine Fryer. All rights reserved.
//

import UIKit

class InterviewsViewController: UIViewController {


    @IBOutlet weak var buttonDoug: UIButton!
    @IBOutlet weak var buttonKanes: UIButton!
    @IBOutlet weak var buttonCliff: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func showCliff() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/Cliff%20Wilson720p.mp4")!)
        
    }
    
    @IBAction func showKanes() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/The%20Kanes720.mp4")!)
        
    }
    
    @IBAction func showDoug() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/Doug%20Green720.mp4")!)
        
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
