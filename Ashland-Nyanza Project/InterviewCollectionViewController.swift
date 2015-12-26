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
        let interview1 = InterviewVideo(text: "Suzanne Condon", descrip: "A Phone Call from Kevin (1:14)", photo: photo1, url: "http://baystatecommons.org/ashlandnyanzaproject/government/suzannepreserve.mp4", summary: "Suzanne K. Condon, MSM, is the associate commissioner and director of the Bureau of Environmental Health at the Massachusetts Department of Public Health. During Ms. Condon’s tenure, the Environmental Health programs have conducted nationally recognized studies, including three studies in Massachusetts of the associations between environmental exposures and the health of children.")
        
        let photo2 = UIImage(named: "suzanne.png")!
        let interview2 = InterviewVideo(text: "Suzanne Condon", descrip: "Different Colored Icicles (0:43)", photo: photo2, url: "http://baystatecommons.org/ashlandnyanzaproject/government/suzanne%20icicles.mp4")
        
        let photo3 = UIImage(named: "suzanne.png")!
        let interview3 = InterviewVideo(text: "Suzanne Condon", descrip: "Why I Do This (2:05)", photo: photo3, url: "http://baystatecommons.org/ashlandnyanzaproject/government/suzannewhyidothis.mp4")
        
        let photo4 = UIImage(named: "suzanne.png")!
        let interview4 = InterviewVideo(text: "Suzanne Condon", descrip: "Nyanza Becomes A Superfund Site (1:35)", photo: photo4, url: "http://baystatecommons.org/ashlandnyanzaproject/government/suzannedesignation.mp4")
        
        let photo5 = UIImage(named: "dankeefe.png")!
        let interview5 = InterviewVideo(text: "Dan Keefe", descrip: "Remediating the Nyanza Site & the Sudbury River (15:09)", photo: photo5, url: "http://baystatecommons.org/ashlandnyanzaproject/government/Dan%20Keefe%20clip%201.mp4", summary: "Dan Keefe is an EPA Remedial Project Manger. Prior to joining EPA he worked at the Massachusetts Department of Environmental Protection, and prior to that he was an EPA contractor. Dan has a background in environmental chemistry and currently manages multiple large, complex (a.k.a., Superfund) sites in Massachusetts.")
        
        let photo6 = UIImage(named: "karenspilka.png")!
        let interview6 = InterviewVideo(text: "State Senator Karen Spilka", descrip: "Creating the Ashland Town Flag (8:16)", photo: photo6, url: "http://baystatecommons.org/ashlandnyanzaproject/government/Karen%20Spilka%20Clip%201.mp4", summary: "First elected to the House of Representatives in a special election in the fall of 2001, Senator Spilka served three years in the House before her election to the Senate. In January 2005, she was officially sworn in as the State Senator for the 2nd Middlesex and Norfolk district, which includes the towns of Ashland, Framingham, Franklin, Holliston, Hopkinton, Medway and Natick in the MetroWest region of Massachusetts.")
        
        let photo7 = UIImage(named: "cousinsone.png")!
        let interview7 = InterviewVideo(text: "Kane Family Cousins", descrip: "Remembering Kevin (1:13)", photo: photo7, url: "http://baystatecommons.org/ashlandnyanzaproject/family/cousins%201.mp4", summary: "Tracie Lee Tajiani and Kate, Abbie, and Olivia Kane are some of Kevin Kane's nieces.")
        
        let photo8 = UIImage(named: "cousinsone.png")!
        let interview8 = InterviewVideo(text: "Kane Family Cousins", descrip: "Relay for Life (1:45)", photo: photo8, url: "http://baystatecommons.org/ashlandnyanzaproject/family/cousins%202.mp4")
        
        let photo9 = UIImage(named: "cousinsone.png")!
        let interview9 = InterviewVideo(text: "Kane Family Cousins", descrip: "Family (1:18)", photo: photo9, url: "http://baystatecommons.org/ashlandnyanzaproject/family/cousins%203.mp4")
        
        let photo10 = UIImage(named: "aace.png")!
        let interview10 = InterviewVideo(text: "AACE", descrip: "The History of AACE (1:09)", photo: photo10, url: "http://baystatecommons.org/ashlandnyanzaproject/community/AACE1.mp4", summary: "Ashland Advocates for a Cleaner Environment")
        
        let photo11 = UIImage(named: "aace.png")!
        let interview11 = InterviewVideo(text: "AACE", descrip: "What Has Changed (0:54)", photo: photo11, url: "http://baystatecommons.org/ashlandnyanzaproject/community/AACE2.mp4")
        
        let photo12 = UIImage(named: "cliffwilson.png")!
        let interview12 = InterviewVideo(text: "Cliff Wilson", descrip: "Colors in the Water (0:46)", photo: photo12, url: "http://baystatecommons.org/ashlandnyanzaproject/community/Cliff%20Wilsoncolorinwater.mp4", summary: "Cliff Wilson is an artist from Ashland, Massachusetts.")
        
        let photo13 = UIImage(named: "timmy.png")!
        let interview13 = InterviewVideo(text: "Timmy Tracy", descrip: "Dye in the Water (0:38)", photo: photo13, url: "http://baystatecommons.org/ashlandnyanzaproject/community/Timmy%20Tracy%20clip%201.mp4", summary: "Timmy Tracy was a resident of Ashland, MA who was diagnosed with cancer.")
        
        let photo14 = UIImage(named: "timmy.png")!
        let interview14 = InterviewVideo(text: "Timmy Tracy", descrip: "Cancer Diagnosis & Treatment (4:18)", photo: photo14, url: "http://baystatecommons.org/ashlandnyanzaproject/community/Timmy%20Tracy%20clip%202.mp4")

        let photo16 = UIImage(named: "merloni.png")!
        let interview16 = InterviewVideo(text: "James Merloni, Jr", descrip: "Discovering the Extent of the Contamination (1:54)", photo: photo16, url: "http://baystatecommons.org/ashlandnyanzaproject/community/Mr%20Merloni_Sub_01.mp4")
        
        let photo15 = UIImage(named: "merloni.png")!
        let interview15 = InterviewVideo(text: "James Merloni, Jr", descrip: "Introduction & How It Was (1:10)", photo: photo15, url: "http://baystatecommons.org/ashlandnyanzaproject/community/Mr%20Merloni_Sub_02.mp4")
        
        let photo17 = UIImage(named: "merloni.png")!
        let interview17 = InterviewVideo(text: "James Merloni, Jr", descrip: "Remediation & Working Together (1:16)", photo: photo17, url: "http://baystatecommons.org/ashlandnyanzaproject/community/Mr%20Merloni_Sub_03.mp4")
        
        let photo18 = UIImage(named: "douggreen.png")!
        let interview18 = InterviewVideo(text: "Doug Green, PhD", descrip: "Living in Ashland & Working at Nyanza (9:48)", photo: photo18, url: "http://baystatecommons.org/ashlandnyanzaproject/community/doug%20green5.mp4", summary: "Doug Green attended high school in Ashland, MA. He graduated magna cum laude from the Yale University with a Bachelor of Science in Biology and Distinction in Biology in 1977. After training at MIT during 1977 and 1978, he graduated in 1981 with a PhD from Yale University. He holds the Peter C. Doherty Endowed Chair of Immunology in St. Jude Children's Research Hospital.")
        
        let photo19 = UIImage(named: "douggreen.png")!
        let interview19 = InterviewVideo(text: "Doug Green, PhD", descrip: "Chemical Cowboys (3:47)", photo: photo19, url: "http://baystatecommons.org/ashlandnyanzaproject/community/doug%20green1.mp4")
        
        let photo20 = UIImage(named: "douggreen.png")!
        let interview20 = InterviewVideo(text: "Doug Green, PhD", descrip: "Advice for the Future (1:33)", photo: photo20, url: "http://baystatecommons.org/ashlandnyanzaproject/community/doug%20green3.mp4")
        
        let photo21 = UIImage(named: "douggreen.png")!
        let interview21 = InterviewVideo(text: "Doug Green, PhD", descrip: "People Don't Talk About It (1:53)", photo: photo21, url: "http://baystatecommons.org/ashlandnyanzaproject/community/doug%20green2.mp4")
        
        let photo22 = UIImage(named: "douggreen.png")!
        let interview22 = InterviewVideo(text: "Doug Green, PhD", descrip: "Regulations Today (1:04)", photo: photo22, url: "http://baystatecommons.org/ashlandnyanzaproject/community/doug%20green4.mp4")
        
        let photo23 = UIImage(named: "douggreen.png")!
        let interview23 = InterviewVideo(text: "Doug Green, PhD", descrip: "The Risks of Working at Nyanza (1:30)", photo: photo23, url: "http://baystatecommons.org/ashlandnyanzaproject/community/doug%20green6.mp4")
        
        let photo24 = UIImage(named: "douggreen.png")!
        let interview24 = InterviewVideo(text: "Doug Green, PhD", descrip: "Taking Precautions Today (2:15)", photo: photo24, url: "http://baystatecommons.org/ashlandnyanzaproject/community/doug%20green7.mp4")
        
        let photo25 = UIImage(named: "douggreen.png")!
        let interview25 = InterviewVideo(text: "Doug Green, PhD", descrip: "Returning to Ashland (0:41)", photo: photo25, url: "http://baystatecommons.org/ashlandnyanzaproject/community/doug%20green8.mp4")
        
        let photo26 = UIImage(named: "lisakaufman.png")!
        let interview26 = InterviewVideo(text: "Lisa Kaufman", descrip: "Every 6 Months (0:31)", photo: photo26, url: "http://baystatecommons.org/ashlandnyanzaproject/family/Kaufman,%20Lisapropertyvalues.mp4", summary: "Sister of  Kaufman")
        
        let photo27 = UIImage(named: "lisakaufman.png")!
        let interview27 = InterviewVideo(text: "Lisa Kaufman", descrip: "The Breaking Point (1:01)", photo: photo27, url: "http://baystatecommons.org/ashlandnyanzaproject/family/Kaufman,%20Lisaenoughisenough.mp4")
        
        let photo28 = UIImage(named: "lisakaufman.png")!
        let interview28 = InterviewVideo(text: "Lisa Kaufman", descrip: "How Much Was Contaminated? (1:02)", photo: photo28, url: "http://baystatecommons.org/ashlandnyanzaproject/family/Kaufman,%20Lisacontaminationspread.mp4")
        
        let photo29 = UIImage(named: "lisakaufman.png")!
        let interview29 = InterviewVideo(text: "Lisa Kaufman", descrip: "Property Values (0:48)", photo: photo29, url: "http://baystatecommons.org/ashlandnyanzaproject/family/Kaufman,%20Lisa6months.mp4")
        
        let photo30 = UIImage(named: "thekanes.png")!
        let interview30 = InterviewVideo(text: "Bernie & Marie Kane", descrip: "Feeling Vindicated (0:32)", photo: photo30, url: "http://baystatecommons.org/ashlandnyanzaproject/family/mr%20and%20mrs%20kanestudy.mp4", summary: "Parents of Kevin Kane")
        
        let photo31 = UIImage(named: "thekanes.png")!
        let interview31 = InterviewVideo(text: "Bernie & Marie Kane", descrip: "Kevin Knew All Along (0:46)", photo: photo31, url: "http://baystatecommons.org/ashlandnyanzaproject/family/mr%20and%20mrs%20kanenoteasytostart.mp4")
        
        let photo32 = UIImage(named: "thekanes.png")!
        let interview32 = InterviewVideo(text: "Bernie & Marie Kane", descrip: "A Committee to Study Cancer in Ashland (1:12)", photo: photo32, url: "http://baystatecommons.org/ashlandnyanzaproject/family/mr%20and%20mrs%20kanecommittee.mp4")
        
        let photo33 = UIImage(named: "thekanes.png")!
        let interview33 = InterviewVideo(text: "Bernie & Marie Kane", descrip: "The Cleanup (0:26)", photo: photo33, url: "http://baystatecommons.org/ashlandnyanzaproject/family/mr%20and%20mrs%20kanecameindressed.mp4")
        
        let photo34 = UIImage(named: "brothers.png")!
        let interview34 = InterviewVideo(text: "Tim, Mike, & Chris Kane", descrip: "Kevin's Boundless Energy (0:49)", photo: photo34, url: "http://baystatecommons.org/ashlandnyanzaproject/family/Brothers%20Library%20clip%201.mp4", summary: "Older brothers of Kevin Kane.")
        
        let photo35 = UIImage(named: "brothers.png")!
        let interview35 = InterviewVideo(text: "Tim, Mike, & Chris Kane", descrip: "About Kevin (0:37)", photo: photo35, url: "http://baystatecommons.org/ashlandnyanzaproject/family/Brothers%20Library%20Clip%202.mp4")
        
        let photo36 = UIImage(named: "brothers.png")!
        let interview36 = InterviewVideo(text: "Tim, Mike, & Chris Kane", descrip: "Out on the Boat with Kevin (1:47)", photo: photo36, url: "http://baystatecommons.org/ashlandnyanzaproject/family/Brothers%20Library%20Clip%203.mp4")
        
        let photo37 = UIImage(named: "brothers.png")!
        let interview37 = InterviewVideo(text: "Tim, Mike, & Chris Kane", descrip: "The Kane Household (3:10)", photo: photo37, url: "hhttp://baystatecommons.org/ashlandnyanzaproject/family/Brothers%20Library%20Clip%204.mp4")
        
        let photo38 = UIImage(named: "brothers.png")!
        let interview38 = InterviewVideo(text: "Tim, Mike, & Chris Kane", descrip: "The Diagnosis (1:43)", photo: photo38, url: "http://baystatecommons.org/ashlandnyanzaproject/family/Brothers%20Library%20Clip%205.mp4")
        
        let photo39 = UIImage(named: "brothers.png")!
        let interview39 = InterviewVideo(text: "Tim, Mike, & Chris Kane", descrip: "Searching for Answers about the Contamination (2:43)", photo: photo39, url: "http://baystatecommons.org/ashlandnyanzaproject/family/Brothers%20Library%20Clip%206.mp4")
        
        let photo40 = UIImage(named: "brothers.png")!
        let interview40 = InterviewVideo(text: "Tim, Mike, & Chris Kane", descrip: "A Story about Kevin (1:21)", photo: photo40, url: "http://baystatecommons.org/ashlandnyanzaproject/family/Brothers%20Library%20Clip%207.mp4")
        
        let photo41 = UIImage(named: "brothers.png")!
        let interview41 = InterviewVideo(text: "Tim, Mike, & Chris Kane", descrip: "Kevin Boils Water (0:52)", photo: photo41, url: "http://baystatecommons.org/ashlandnyanzaproject/family/Brothers%20Library%20Clip%208.mp4")
        
        let photo42 = UIImage(named: "brothers.png")!
        let interview42 = InterviewVideo(text: "Tim, Mike, & Chris Kane", descrip: "Fundraising Event (1:26)", photo: photo42, url: "http://baystatecommons.org/ashlandnyanzaproject/family/Brothers%20Library%20Clip%209.mp4")
        
        let photo43 = UIImage(named: "brothers.png")!
        let interview43 = InterviewVideo(text: "Tim, Mike, & Chris Kane", descrip: "Kevin Kane Scholarship (1:32)", photo: photo43, url: "http://baystatecommons.org/ashlandnyanzaproject/family/Brothers%20Library%20Clip%2010.mp4")
        
        interviewsBySection.append([InterviewVideo]())
        interviewsBySection.append([InterviewVideo]())
        interviewsBySection.append([InterviewVideo]())
        
        interviewsByName["Suzanne Condon"] = [interview1, interview2, interview3, interview4]
        interviewsByName["Dan Keefe"] = [interview5]
        interviewsByName["State Senator Karen Spilka"] = [interview6]
        interviewsByName["Kane Family Cousins"] = [interview7, interview8, interview9]
        interviewsByName["AACE"] = [interview10, interview11]
        interviewsByName["Cliff Wilson"] = [interview12]
        interviewsByName["Timmy Tracy"] = [interview13, interview14]
        interviewsByName["James Merloni, Jr"] = [interview15, interview16, interview17]
        interviewsByName["Doug Green, PhD"] = [interview18, interview19, interview20, interview21, interview22, interview23, interview24, interview25]
        interviewsByName["Lisa Kaufman"] = [interview26, interview27, interview28, interview29]
        interviewsByName["Bernie & Marie Kane"] = [interview30, interview31, interview32, interview33]
        interviewsByName["Tim, Mike, & Chris Kane"] = [interview34, interview35, interview36, interview37, interview38, interview39, interview40, interview41, interview42, interview43]
        
        interviewsBySection[0] = [interview10, interview12, interview13, interview15, interview18]
        
        interviewsBySection[1] = [interview7, interview26, interview30, interview34]
        
        interviewsBySection[2] = [interview1, interview5, interview6]
        
        sectionNames = ["Community", "Family", "Government"]
        
    /*interviewsList += [interview1, interview2, interview3, interview4, interview5, interview6, interview7, interview8, interview9, interview10, interview11, interview12, interview13, interview14, interview15, interview16, interview17, interview18, interview19, interview20, interview21, interview22, interview23, interview24, interview25, interview26, interview27, interview28, interview29, interview30, interview31, interview32, interview33, interview34, interview35, interview36, interview37, interview38, interview39, interview40, interview41, interview42, interview43]*/
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
