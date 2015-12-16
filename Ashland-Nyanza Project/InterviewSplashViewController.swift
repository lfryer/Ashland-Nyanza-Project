//
//  InterviewSplashViewController.swift
//  Ashland-Nyanza Project
//
//  Created by Lorraine Fryer on 11/15/15.
//  Copyright © 2015 Lorraine Fryer. All rights reserved.
//

import UIKit

class InterviewSplashViewController: UICollectionViewController {
    
    private let reuseIdentifier = "videoCell"

    @IBOutlet weak var videoScreenshot: UIImageView!
    @IBOutlet weak var videoName: UILabel!
    @IBOutlet weak var videoSummary: UITextView!
    @IBOutlet weak var videoList: UICollectionView!
    var currentInterviewList: [InterviewVideo]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let currentInterviewList = currentInterviewList {
            videoScreenshot.image = currentInterviewList[0].photo
            videoName.text = currentInterviewList[0].text
        }
        
        // Register cell classes
        //videoList.registerClass(InterviewSplashCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        // Do any additional setup after loading the view.
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return currentInterviewList!.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath)
            as! InterviewSplashCollectionViewCell
        
        // Configure the cell
        let interview = currentInterviewList![indexPath.row]
        cell.interviewDescrip.text = interview.descrip
        
        return cell
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
