//
//  InterviewSplashViewController.swift
//  Ashland-Nyanza Project
//
//  Created by Lorraine Fryer on 11/15/15.
//  Copyright © 2015 Lorraine Fryer. All rights reserved.
//

import UIKit

class InterviewSplashViewController: UIViewController {

    @IBOutlet weak var videoScreenshot: UIImageView!
    @IBOutlet weak var videoName: UILabel!
    @IBOutlet weak var videoSummary: UITextView!
    var currentInterview: ListItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let currentInterview = currentInterview {
            videoSummary.text = currentInterview.descrip
            videoName.text = currentInterview.text
            videoScreenshot.image = currentInterview.photo
        }
        // Do any additional setup after loading the view.
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
