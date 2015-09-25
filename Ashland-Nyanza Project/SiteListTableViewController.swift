//
//  SiteListTableViewController.swift
//  Ashland-Nyanza Project
//
//  Created by Lorraine Fryer on 9/7/15.
//  Copyright (c) 2015 Lorraine Fryer. All rights reserved.
//

import UIKit

class SiteListTableViewController: UITableViewController {

    @IBAction func back(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    var siteList = [ListItem]()
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSiteList()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    func loadSiteList() {
        
        let photo1 = UIImage(named: "AshlandPL.png")!
        let site1 = ListItem(text: "Ashland Public Library", photo: photo1, videos: ["video1"], descrip: "This is the Ashland Public Library, where the EPA records have been stored for decades, forgotten in a small, largely unused room. Also the location for the exhibition portion of the Ashland-Nyanza Project.")
        
        let photo2 = UIImage(named: "Ballfield.png")!
        let site2 = ListItem(text: "Baseball Field", photo: photo2, videos: ["video2"], descrip: "This is a baseball field across the street from the Nyanza property, where many children growing up in Ashland spend hours at a time in practice and games.")
        
        let photo3 = UIImage(named: "Megunko.png")!
        let site3 = ListItem(text: "Megunko Road", photo: photo3, videos: ["video3"], descrip: "At the end of Megunko Road is this large building, currently in use by a company leasing the site. A great deal of the administration of Nyanza Chemical occurred in this building.")
        
        
        siteList += [site1, site2, site3]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return siteList.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "ListItemTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! ListItemTableViewCell
        let site = siteList[indexPath.row]

        cell.nameLabel.text = site.text

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
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
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showSiteDetail" {
            let siteDetailsViewController = segue.destinationViewController as!
                SiteDetailsViewController
            if let selectedSiteCell = sender as? ListItemTableViewCell {
                let indexPath = tableView.indexPathForCell(selectedSiteCell)
                let selectedSite = siteList[indexPath!.row]
                siteDetailsViewController.currentSite = selectedSite
                
            }
            
        }
    }
    

}
