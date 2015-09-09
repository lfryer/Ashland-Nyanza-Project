//
//  ChemicalsTableViewController.swift
//  Ashland-Nyanza Project
//
//  Created by Lorraine Fryer on 9/8/15.
//  Copyright (c) 2015 Lorraine Fryer. All rights reserved.
//

import UIKit

class ChemicalsTableViewController: UITableViewController {

    var chemicalsList = [ChemicalsListItem]()
    override func viewDidLoad() {
        super.viewDidLoad()
        loadChemicalsList()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    func loadChemicalsList() {
        
        let photo1 = UIImage(named: "acenaphthylene.png")!
        let chem1 = ChemicalsListItem(text: "Acenaphthylene", photo: photo1, descrip: "Acenaphthylene is one of a group of polycyclic aromatic hydrocarbons (PAHs). PAHs are a group of chemicals that are formed during the incomplete burning of coal, oil, gas, wood, garbage, or other organic substances, such as tobacco and charbroiled meat. There are more than 100 different PAHs. PAHs usually occur naturally, but they can be manufactured as individual compounds for research purposes. PAHs can be harmful to your health under some circumstances. Studies of people show that individuals exposed by breathing or skin contact for long periods to mixtures that contain PAHs and other compounds can develop cancer.")
        
        let photo2 = UIImage(named: "acetone.png")!
        let chem2 = ChemicalsListItem(text: "Acetone", photo: photo2, descrip: "Acetone is a chemical that is found naturally in the environment and is also produced by industries. Most acetone produced is used to make other chemicals that make plastics, fibers, and drugs. Acetone is also used to dissolve other substances. Most people can smell acetone in the air at 100 to 140 ppm; that means you will probably smell acetone before you feel effects like headache and confusion. Levels of acetone in air in rural areas and in cities (less than 8 ppb) are generally lower than this.")
        
        let photo3 = UIImage(named: "aldrin.png")!
        let chem3 = ChemicalsListItem(text: "Aldrin", photo: photo3, descrip: "description for chemical 3")
        
        
        chemicalsList += [chem1, chem2, chem3]
        
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
        return chemicalsList.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "ChemicalsTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! ChemicalsTableViewCell
        let chemical = chemicalsList[indexPath.row]
        
        cell.chemLabel.text = chemical.text
        
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showChemicalDetail" {
            let chemicalDetailsViewController = segue.destinationViewController as!
            ChemicalDetailsViewController
            if let selectedChemCell = sender as? ChemicalsTableViewCell {
                let indexPath = tableView.indexPathForCell(selectedChemCell)
                let selectedChemical = chemicalsList[indexPath!.row]
                chemicalDetailsViewController.currentChemical = selectedChemical
                
            }
            
        }
    }

}
