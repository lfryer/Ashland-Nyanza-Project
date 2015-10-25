//
//  BookListViewController.swift
//  Ashland-Nyanza Project
//
//  Created by Lorraine Fryer on 10/14/15.
//  Copyright © 2015 Lorraine Fryer. All rights reserved.
//

import UIKit

class BookListViewController: UITableViewController {

    @IBAction func back(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    var bookList = [BookListItem]()
    override func viewDidLoad() {
        super.viewDidLoad()
        loadBookList()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    func loadBookList() {
        
        let photo1 = UIImage(named: "flashpoints.jpg")!
        let book1 = BookListItem(text: "Flashpoints in Environmental Policymaking", photo: photo1, url: "http://amzn.com/0791433307")
        
        let photo2 = UIImage(named: "better.jpg")!
        let book2 = BookListItem(text: "Better: The Everyday Art of Sustainable Living", photo: photo2, url: "http://amzn.com/086571794X")
        
        let photo3 = UIImage(named: "bodytoxic.jpg")!
        let book3 = BookListItem(text: "Body Toxic: An Environmental Memoir", photo: photo3, url: "http://amzn.com/1582431167")
        
        let photo4 = UIImage(named: "moralground.jpg")!
        let book4 = BookListItem(text: "Moral Ground: Ethical Action for a Planet in Peril", photo: photo4, url: "http://amzn.com/1595340858")
        
        let photo5 = UIImage(named: "1001ways.jpg")!
        let book5 = BookListItem(text: "1001 Ways to Save the Earth", photo: photo5, url: "http://amzn.com/081185986X")
        
        let photo6 = UIImage(named: "ecochick.jpg")!
        let book6 = BookListItem(text: "The Eco Chick Guide to Life: How to Be Fabulously Green", photo: photo6, url: "http://amzn.com/0312378947")
        
        let photo7 = UIImage(named: "betterworldshopping.jpg")!
        let book7 = BookListItem(text: "The Better World Shopping Guide #5: Every Dollar Makes a Difference", photo: photo7, url: "http://amzn.com/0865717907")
        
        let photo8 = UIImage(named: "toxicwastesites.jpg")!
        let book8 = BookListItem(text: "Toxic Waste Sites: An Encyclopedia of Endangered America", photo: photo8, url: "http://amzn.com/0874369347")
        
        let photo9 = UIImage(named: "theepa.jpg")!
        let book9 = BookListItem(text: "EPA (Government Agencies)", photo: photo9, url: "http://amzn.com/158810981X")
        
        let photo10 = UIImage(named: "ecosinner.jpg")!
        let book10 = BookListItem(text: "Confessions of an Eco-Sinner: Tracking Down the Sources of My Stuff", photo: photo10, url: "http://amzn.com/0807085952")
        
        let photo11 = UIImage(named: "nottypicalbook.jpg")!
        let book11 = BookListItem(text: "Not Your Typical Book About the Environment", photo: photo11, url: "http://amzn.com/189734984X")
        
        let photo12 = UIImage(named: "toxicdebts.jpg")!
        let book12 = BookListItem(text: "Toxic Debts and the Superfund Dilemma", photo: photo12, url: "http://amzn.com/0807844357")
        
        let photo13 = UIImage(named: "commonchemicals.jpg")!
        let book13 = BookListItem(text: "Common Chemicals Found at Superfund Sites", photo: photo13, url: "http://amzn.com/1249499585")
        
        let photo14 = UIImage(named: "conundrum.jpg")!
        let book14 = BookListItem(text: "The Conundrum", photo: photo14, url: "http://amzn.com/1594485615")
        
        let photo15 = UIImage(named: "environmentalgeology.jpg")!
        let book15 = BookListItem(text: "Environmental Geology (8th Edition)", photo: photo15, url: "http://amzn.com/0130224669")
        
        let photo16 = UIImage(named: "whereamiwearing.jpg")!
        let book16 = BookListItem(text: "Where am I Wearing: A Global Tour to the Countries, Factories, and People That Make Our Clothes", photo: photo16, url: "http://amzn.com/1118277554")
        
        let photo17 = UIImage(named: "pollution.jpg")!
        let book17 = BookListItem(text: "Pollution (Current Controversies)", photo: photo17, url: "http://amzn.com/0737756357")
        
        let photo18 = UIImage(named: "environmentalpendulum.jpg")!
        let book18 = BookListItem(text: "The Environmental Pendulum: A Quest for the Truth about Toxic Chemicals, Human Health, and Environmental Protection", photo: photo18, url: "http://amzn.com/0520220471")
        
        let photo19 = UIImage(named: "nucleartoxicwaste.jpg")!
        let book19 = BookListItem(text: "Nuclear and Toxic Waste (At Issue Series)", photo: photo19, url: "http://amzn.com/0737746823")
        
        let photo20 = UIImage(named: "cleaningupthemess.jpg")!
        let book20 = BookListItem(text: "Cleaning Up the Mess: Implementation Strategies in Superfund", photo: photo20, url: "http://amzn.com/0815714130")
        
        let photo21 = UIImage(named: "invisiblenature.jpg")!
        let book21 = BookListItem(text: "Invisible Nature: Healing the Destructive Divide Between People and the Environment", photo: photo21, url: "http://amzn.com/B00BH0VPII")
        
        let photo22 = UIImage(named: "unequalprotection.jpg")!
        let book22 = BookListItem(text: "Unequal Protection: Environmental Justice and Communities of Color", photo: photo22, url: "http://amzn.com/0871563800")
        
        let photo23 = UIImage(named: "overdressed.jpg")!
        let book23 = BookListItem(text: "Overdressed: The Shockingly High Cost of Cheap Fashion", photo: photo23, url: "http://amzn.com/1591846544")
        
        let photo24 = UIImage(named: "toxiccommunities.jpg")!
        let book24 = BookListItem(text: "Toxic Communities: Environmental Racism, Industrial Pollution, and Residential Mobility", photo: photo24, url: "http://amzn.com/1479861782")
        
        let photo25 = UIImage(named: "somethingnew.jpg")!
        let book25 = BookListItem(text: "Something New Under the Sun: An Environmental History of the World in the 20th Century (Global Century Series)", photo: photo25, url: "http://amzn.com/0140295097")
        
        let photo26 = UIImage(named: "zerowastehome.jpg")!
        let book26 = BookListItem(text: "Zero Waste Home: The Ultimate Guide to Simplifying Your Life by Reducing Your Waste", photo: photo26, url: "http://amzn.com/1451697686")
        
        let photo27 = UIImage(named: "wearnoevil.jpg")!
        let book27 = BookListItem(text: "Wear No Evil: How to Change the World with Your Wardrobe", photo: photo27, url: "http://amzn.com/0762451270")
        
        let photo28 = UIImage(named: "merchants.jpg")!
        let book28 = BookListItem(text: "Merchants of Doubt: How a Handful of Scientists Obscured the Truth on Issues from Tobacco Smoke to Global Warming", photo: photo28, url: "http://amzn.com/1608193942")
        
        let photo29 = UIImage(named: "enforcement.jpg")!
        let book29 = BookListItem(text: "Enforcement at the EPA: High Stakes and Hard Choices, Revised Edition", photo: photo29, url: "http://amzn.com/0292754418")
        
        
        bookList += [book1, book2, book3, book4, book5, book6, book7, book8, book9, book10, book11, book12, book13, book14, book15, book16, book17, book18, book19, book20, book21, book22, book23, book24, book25, book26, book27, book28, book29]
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookList.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "BookListItemTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! BookListTableViewCell
        let book = bookList[indexPath.row]
        
        cell.bookLabel.text = book.text
        cell.bookCover.image = book.photo
        
        return cell
    }
    
    override func tableView(tableview: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)

        let book = bookList[indexPath.row]
        
    
        let siteUrl = book.url
        UIApplication.sharedApplication().openURL(NSURL(string: siteUrl)!)
    
    }
    
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
