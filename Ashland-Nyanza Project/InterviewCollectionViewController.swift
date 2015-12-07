//
//  InterviewCollectionViewController.swift
//  Ashland-Nyanza Project
//
//  Created by Lorraine Fryer on 11/10/15.
//  Copyright © 2015 Lorraine Fryer. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class InterviewCollectionViewController: UICollectionViewController {

    private let reuseIdentifier = "ashlandInterviewCell"
    
    var interviewList = [ListItem]()
    var interviewsList = [InterviewVideo]()
    var sectionNames = [String]()
    var interviewsBySection = [[InterviewVideo]]()
    var interviewsByName = [String: [InterviewVideo]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadInterviewsList()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        //self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }
    
    func loadInterviewsList() {
        
        let photo1 = UIImage(named: "suzanne.png")!
        let interview1 = InterviewVideo(text: "Suzanne Condon", descrip: "A Phone Call from Kevin", photo: photo1, url: "http://baystatecommons.org/ashlandnyanzaproject/government/suzannepreserve.mp4")
        
        let photo2 = UIImage(named: "suzanne.png")!
        let interview2 = InterviewVideo(text: "Suzanne Condon", descrip: "Different Colored Icicles", photo: photo2, url: "http://baystatecommons.org/ashlandnyanzaproject/government/suzanne%20icicles.mp4")
        
        let photo3 = UIImage(named: "suzanne.png")!
        let interview3 = InterviewVideo(text: "Suzanne Condon", descrip: "Why I Do This", photo: photo3, url: "http://baystatecommons.org/ashlandnyanzaproject/government/suzannewhyidothis.mp4")
        
        let photo4 = UIImage(named: "suzanne.png")!
        let interview4 = InterviewVideo(text: "Suzanne Condon", descrip: "Nyanza Becomes A Superfund Site", photo: photo4, url: "http://baystatecommons.org/ashlandnyanzaproject/government/suzannedesignation.mp4")
        
        let photo5 = UIImage(named: "dankeefe.png")!
        let interview5 = InterviewVideo(text: "Dan Keefe", descrip: "Remediating the Nyanza Site & the Sudbury River", photo: photo5, url: "http://baystatecommons.org/ashlandnyanzaproject/government/Dan%20Keefe%20clip%201.mp4")
        
        let photo6 = UIImage(named: "karenspilka.png")!
        let interview6 = InterviewVideo(text: "Karen Spilka", descrip: "Creating the Ashland Town Flag", photo: photo6, url: "http://baystatecommons.org/ashlandnyanzaproject/government/Karen%20Spilka%20Clip%201.mp4")
        
        let photo7 = UIImage(named: "cousinsone.png")!
        let interview7 = InterviewVideo(text: "Kane Family Cousins", descrip: "Remembering Kevin", photo: photo7, url: "http://baystatecommons.org/ashlandnyanzaproject/family/cousins%201.mp4")
        
        let photo8 = UIImage(named: "cousinsone.png")!
        let interview8 = InterviewVideo(text: "Kane Family Cousins", descrip: "Relay for Life", photo: photo8, url: "http://baystatecommons.org/ashlandnyanzaproject/family/cousins%202.mp4")
        
        let photo9 = UIImage(named: "cousinsone.png")!
        let interview9 = InterviewVideo(text: "Kane Family Cousins", descrip: "Family", photo: photo9, url: "http://baystatecommons.org/ashlandnyanzaproject/family/cousins%203.mp4")
        
        let photo10 = UIImage(named: "aace.png")!
        let interview10 = InterviewVideo(text: "AACE", descrip: "The History of AACE", photo: photo10, url: "http://baystatecommons.org/ashlandnyanzaproject/community/AACE1.mp4")
        
        let photo11 = UIImage(named: "aace.png")!
        let interview11 = InterviewVideo(text: "AACE", descrip: "What Has Changed", photo: photo11, url: "http://baystatecommons.org/ashlandnyanzaproject/community/AACE2.mp4")
        
        let photo12 = UIImage(named: "cliffwilson.png")!
        let interview12 = InterviewVideo(text: "Cliff Wilson", descrip: "Colors in the Water", photo: photo12, url: "http://baystatecommons.org/ashlandnyanzaproject/community/Cliff%20Wilsoncolorinwater.mp4")
        
        let photo13 = UIImage(named: "timmy.png")!
        let interview13 = InterviewVideo(text: "Timmy Tracy", descrip: "Dye in the Water", photo: photo13, url: "http://baystatecommons.org/ashlandnyanzaproject/community/Timmy%20Tracy%20clip%201.mp4")
        
        let photo14 = UIImage(named: "timmy.png")!
        let interview14 = InterviewVideo(text: "Timmy Tracy", descrip: "Cancer Diagnosis & Treatment", photo: photo14, url: "http://baystatecommons.org/ashlandnyanzaproject/community/Timmy%20Tracy%20clip%202.mp4")

        let photo16 = UIImage(named: "merloni.png")!
        let interview16 = InterviewVideo(text: "James Merloni, Jr", descrip: "Discovering the Extent of the Contamination", photo: photo16, url: "http://baystatecommons.org/ashlandnyanzaproject/community/Mr%20Merloni_Sub_01.mp4")
        
        let photo15 = UIImage(named: "merloni.png")!
        let interview15 = InterviewVideo(text: "James Merloni, Jr", descrip: "Introduction & How It Was", photo: photo15, url: "http://baystatecommons.org/ashlandnyanzaproject/community/Mr%20Merloni_Sub_02.mp4")
        
        let photo17 = UIImage(named: "merloni.png")!
        let interview17 = InterviewVideo(text: "James Merloni, Jr", descrip: "Remediation & Working Together", photo: photo17, url: "http://baystatecommons.org/ashlandnyanzaproject/community/Mr%20Merloni_Sub_03.mp4")
        
        let photo19 = UIImage(named: "douggreen.png")!
        let interview19 = InterviewVideo(text: "Doug Green, PhD", descrip: "Chemical Cowboys", photo: photo19, url: "http://baystatecommons.org/ashlandnyanzaproject/community/doug%20green1.mp4")
        
        let photo21 = UIImage(named: "douggreen.png")!
        let interview21 = InterviewVideo(text: "Doug Green, PhD", descrip: "People Don't Talk About It", photo: photo21, url: "http://baystatecommons.org/ashlandnyanzaproject/community/doug%20green2.mp4")
        
        let photo20 = UIImage(named: "douggreen.png")!
        let interview20 = InterviewVideo(text: "Doug Green: PhD", descrip: "Advice for the Future", photo: photo20, url: "http://baystatecommons.org/ashlandnyanzaproject/community/doug%20green8.mp4")
        
        let photo22 = UIImage(named: "douggreen.png")!
        let interview22 = InterviewVideo(text: "Doug Green: PhD", descrip: "Regulations Today", photo: photo22, url: "http://baystatecommons.org/ashlandnyanzaproject/community/doug%20green4.mp4")
        
        let photo18 = UIImage(named: "douggreen.png")!
        let interview18 = InterviewVideo(text: "Doug Green: PhD", descrip: "Living in Ashland & Working at Nyanza", photo: photo18, url: "http://baystatecommons.org/ashlandnyanzaproject/community/doug%20green5.mp4")
        
        let photo23 = UIImage(named: "douggreen.png")!
        let interview23 = InterviewVideo(text: "Doug Green, PhD", descrip: "The Risks of Working at Nyanza", photo: photo23, url: "http://baystatecommons.org/ashlandnyanzaproject/community/doug%20green6.mp4")
        
        let photo24 = UIImage(named: "douggreen.png")!
        let interview24 = InterviewVideo(text: "Doug Green, PhD", descrip: "Taking Precautions Today", photo: photo24, url: "http://baystatecommons.org/ashlandnyanzaproject/community/doug%20green7.mp4")
        
        let photo25 = UIImage(named: "douggreen.png")!
        let interview25 = InterviewVideo(text: "Doug Green, PhD", descrip: "Returning to Ashland", photo: photo25, url: "http://baystatecommons.org/ashlandnyanzaproject/community/doug%20green8.mp4")
        
        let photo26 = UIImage(named: "lisakaufman.png")!
        let interview26 = InterviewVideo(text: "Lisa Kaufman", descrip: "Every 6 Months", photo: photo26, url: "http://baystatecommons.org/ashlandnyanzaproject/family/Kaufman,%20Lisapropertyvalues.mp4")
        
        let photo27 = UIImage(named: "lisakaufman.png")!
        let interview27 = InterviewVideo(text: "Lisa Kaufman", descrip: "How Much Was Contaminated?", photo: photo27, url: "http://baystatecommons.org/ashlandnyanzaproject/family/Kaufman,%20Lisaenoughisenough.mp4")
        
        let photo28 = UIImage(named: "lisakaufman.png")!
        let interview28 = InterviewVideo(text: "Lisa Kaufman", descrip: "The Breaking Point", photo: photo28, url: "http://baystatecommons.org/ashlandnyanzaproject/family/Kaufman,%20Lisacontaminationspread.mp4")
        
        let photo29 = UIImage(named: "lisakaufman.png")!
        let interview29 = InterviewVideo(text: "Lisa Kaufman", descrip: "Property Values", photo: photo29, url: "http://baystatecommons.org/ashlandnyanzaproject/family/Kaufman,%20Lisa6months.mp4")
        
        let photo30 = UIImage(named: "thekanes.png")!
        let interview30 = InterviewVideo(text: "Bernie & Marie Kane", descrip: "Feeling Vindicated", photo: photo30, url: "http://baystatecommons.org/ashlandnyanzaproject/family/mr%20and%20mrs%20kanestudy.mp4")
        
        let photo31 = UIImage(named: "thekanes.png")!
        let interview31 = InterviewVideo(text: "Bernie & Marie Kane", descrip: "Kevin Knew All Along", photo: photo31, url: "http://baystatecommons.org/ashlandnyanzaproject/family/mr%20and%20mrs%20kanenoteasytostart.mp4")
        
        let photo32 = UIImage(named: "thekanes.png")!
        let interview32 = InterviewVideo(text: "Bernie & Marie Kane", descrip: "A Committee to Study Cancer in Ashland", photo: photo32, url: "http://baystatecommons.org/ashlandnyanzaproject/family/mr%20and%20mrs%20kanecommittee.mp4")
        
        let photo33 = UIImage(named: "thekanes.png")!
        let interview33 = InterviewVideo(text: "Bernie & Marie Kane", descrip: "The Cleanup", photo: photo33, url: "http://baystatecommons.org/ashlandnyanzaproject/family/mr%20and%20mrs%20kanecameindressed.mp4")
        
        interviewsBySection.append([InterviewVideo]())
        interviewsBySection.append([InterviewVideo]())
        interviewsBySection.append([InterviewVideo]())
        
        interviewsByName["Suzanne Condon"] = [interview1, interview2, interview3, interview4]
        interviewsByName["Dan Keefe"] = [interview5]
        interviewsByName["Karen Spilka"] = [interview6]
        interviewsByName["Kane Family Cousins"] = [interview7, interview8, interview9]
        interviewsByName["AACE"] = [interview10, interview11]
        interviewsByName["Cliff Wilson"] = [interview12]
        interviewsByName["Timmy Tracy"] = [interview13, interview14]
        interviewsByName["James Merloni, Jr"] = [interview15, interview16, interview17]
        interviewsByName["Doug Green, PhD"] = [interview18, interview19, interview20, interview21, interview22, interview23, interview24]
        interviewsByName["Lisa Kaufman"] = [interview26, interview27, interview28, interview29]
        interviewsByName["Bernie & Marie Kane"] = [interview30, interview31, interview32, interview33]
        
        interviewsBySection[0] = [interview10, interview11, interview12, interview13, interview14, interview15, interview16, interview17, interview18, interview19, interview20, interview21, interview22, interview23, interview24, interview25]
        
        interviewsBySection[1] = [interview7, interview8, interview9, interview26, interview27, interview28, interview29, interview30, interview31, interview32, interview33]
        
        interviewsBySection[2] = [interview1, interview2, interview3, interview4, interview5, interview6]
        
        sectionNames = ["Community", "Family", "Government"]
        
    /*interviewsList += [interview1, interview2, interview3, interview4, interview5, interview6, interview7, interview8, interview9, interview10, interview11, interview12, interview13, interview14, interview15, interview16, interview17, interview18, interview19, interview20, interview21, interview22, interview23, interview24, interview25, interview26, interview27, interview28, interview29, interview30, interview31, interview32, interview33]*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return sectionNames.count
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return interviewsBySection[section].count
    }
    
    override func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        
        var v : InterviewHeaderView! = nil
        if kind == UICollectionElementKindSectionHeader {
            v = collectionView.dequeueReusableSupplementaryViewOfKind(UICollectionElementKindSectionHeader, withReuseIdentifier: "interviewHeader", forIndexPath: indexPath) as! InterviewHeaderView
            v.interviewHeaderLabel.text = sectionNames[indexPath.section]
            
        }
        return v
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath)
            as! InterviewCollectionViewCell
    
        // Configure the cell
        let interview = interviewsBySection[indexPath.section][indexPath.row]
        cell.interviewLabel.text = interview.text
        /*cell.interviewDescrip.text = interview.descrip*/
        cell.interviewScreenshot.image = interview.photo
    
        return cell
    }

    /*override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let interview = interviewsBySection[indexPath.section][indexPath.row]
        UIApplication.sharedApplication().openURL(NSURL(string: interview.url)!)
    }*/
    
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "gotoSplash" {
            let interviewSplashViewController = segue.destinationViewController as!
            InterviewSplashViewController
            if let selectedInterviewCell = sender as? InterviewCollectionViewCell {
                let indexPath = collectionView!.indexPathForCell(selectedInterviewCell)
                let selectedInterview = interviewsBySection[indexPath!.section][indexPath!.row]
                interviewSplashViewController.currentInterviewList = interviewsByName[selectedInterview.text]
                
            }
        }
    }
}
