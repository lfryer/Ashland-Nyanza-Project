//
//  InterviewsViewController.swift
//  Ashland-Nyanza Project
//
//  Created by Lorraine Fryer on 11/3/15.
//  Copyright © 2015 Lorraine Fryer. All rights reserved.
//

import UIKit

class InterviewsViewController: UIViewController {

    @IBOutlet weak var buttonKaneOne: UIButton!
    @IBOutlet weak var buttonKaneTwo: UIButton!
    @IBOutlet weak var buttonKaneThree: UIButton!
    @IBOutlet weak var buttonKaneFour: UIButton!
    @IBOutlet weak var buttonLisaOne: UIButton!
    @IBOutlet weak var buttonLisaTwo: UIButton!
    @IBOutlet weak var buttonLisaThree: UIButton!
    @IBOutlet weak var buttonLisaFour: UIButton!
    @IBOutlet weak var buttonDougOne: UIButton!
    @IBOutlet weak var buttonDougTwo: UIButton!
    @IBOutlet weak var buttonDougThree: UIButton!
    @IBOutlet weak var buttonDougFour: UIButton!
    @IBOutlet weak var buttonDougFive: UIButton!
    @IBOutlet weak var buttonDougSix: UIButton!
    @IBOutlet weak var buttonDougSeven: UIButton!
    @IBOutlet weak var buttonDougEight: UIButton!
    @IBOutlet weak var buttonMerloniOne: UIButton!
    @IBOutlet weak var buttonMerloniTwo: UIButton!
    @IBOutlet weak var buttonMerloniThree: UIButton!
    @IBOutlet weak var buttonTimmyOne: UIButton!
    @IBOutlet weak var buttonTimmyTwo: UIButton!
    @IBOutlet weak var buttonCliffOne: UIButton!
    @IBOutlet weak var buttonAaceOne: UIButton!
    @IBOutlet weak var buttonAaceTwo: UIButton!
    @IBOutlet weak var buttonCousinsOne: UIButton!
    @IBOutlet weak var buttonCousinsTwo: UIButton!
    @IBOutlet weak var buttonCousinsThree: UIButton!
    @IBOutlet weak var buttonSuzanneOne: UIButton!
    @IBOutlet weak var buttonSuzanneTwo: UIButton!
    @IBOutlet weak var buttonSuzanneThree: UIButton!
    @IBOutlet weak var buttonSuzanneFour: UIButton!
    @IBOutlet weak var buttonKarenOne: UIButton!
    @IBOutlet weak var buttonDanOne: UIButton!

    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func showKaneOne() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/family/mr%20and%20mrs%20kanecameindressed.mp4")!)
        
    }
    
    @IBAction func showKaneTwo() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/family/mr%20and%20mrs%20kanecommittee.mp4")!)
        
    }
    
    @IBAction func showKaneThree() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/family/mr%20and%20mrs%20kanenoteasytostart.mp4")!)
        
    }
    
    @IBAction func showKaneFour() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/family/mr%20and%20mrs%20kanestudy.mp4")!)
        
    }
    
    @IBAction func showLisaOne() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/family/Kaufman,%20Lisa6months.mp4")!)
        
    }
    
    @IBAction func showLisaTwo() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/family/Kaufman,%20Lisacontaminationspread.mp4")!)
        
    }
    
    @IBAction func showLisaThree() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/family/Kaufman,%20Lisaenoughisenough.mp4")!)
        
    }
    
    @IBAction func showLisaFour() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/family/Kaufman,%20Lisapropertyvalues.mp4")!)
        
    }

    @IBAction func showDougOne() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/community/doug%20green1.mp4")!)
        
    }
    
    @IBAction func showDougTwo() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/community/doug%20green2.mp4")!)
        
    }
    
    @IBAction func showDougThree() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/community/doug%20green3.mp4")!)
        
    }
    
    @IBAction func showDougFour() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/community/doug%20green4.mp4")!)
        
    }
    
    @IBAction func showDougFive() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/community/doug%20green5.mp4")!)
        
    }
    
    @IBAction func showDougSix() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/community/doug%20green6.mp4")!)
        
    }
    
    @IBAction func showDougSeven() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/community/doug%20green7.mp4")!)
        
    }
    
    @IBAction func showDougEight() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/community/doug%20green8.mp4")!)
        
    }
    
    @IBAction func showMerloniOne() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/community/Mr%20Merloni_Sub_01.mp4")!)
        
    }
    
    @IBAction func showMerloniTwo() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/community/Mr%20Merloni_Sub_02.mp4")!)
        
    }
    
    @IBAction func showMerloniThree() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/community/Mr%20Merloni_Sub_03.mp4")!)
        
    }
    
    @IBAction func showTimmyOne() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/community/Timmy%20Tracy%20clip%201.mp4")!)
        
    }
    
    @IBAction func showTimmyTwo() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/community/Timmy%20Tracy%20clip%202.mp4")!)
        
    }
    
    @IBAction func showCliffOne() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/community/Cliff%20Wilsoncolorinwater.mp4")!)
        
    }
    
    @IBAction func showAaceOne() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/community/AACE1.mp4")!)
        
    }
    
    @IBAction func showAaceTwo() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/community/AACE2.mp4")!)
        
    }
    
    @IBAction func showCousinsOne() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/family/cousins%201.mp4")!)
        
    }
    
    @IBAction func showCousinsTwo() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/family/cousins%202.mp4")!)
        
    }
    
    @IBAction func showCousinsThree() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/family/cousins%203.mp4")!)
        
    }
    
    @IBAction func showSuzanneOne() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/government/suzanne%20icicles.mp4")!)
        
    }
    
    @IBAction func showSuzanneTwo() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/government/suzannedesignation.mp4")!)
        
    }
    
    @IBAction func showSuzanneThree() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/community/Doug%20Green%20One.mp4")!)
        
    }
    
    @IBAction func showSuzanneFour() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/community/Doug%20Green%20One.mp4")!)
        
    }
    
    @IBAction func showKarenOne() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/government/Karen%20Spilka%20Clip%201.mp4")!)
        
    }
    
    @IBAction func showDanOne() {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://baystatecommons.org/ashlandnyanzaproject/government/Dan%20Keefe%20clip%201.mp4")!)
        
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
