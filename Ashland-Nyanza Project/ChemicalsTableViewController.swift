//
//  ChemicalsTableViewController.swift
//  Ashland-Nyanza Project
//
//  Created by Lorraine Fryer on 9/8/15.
//  Copyright (c) 2015 Lorraine Fryer. All rights reserved.
//

import UIKit

class ChemicalsTableViewController: UITableViewController {

    @IBAction func back(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    
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
        let chem3 = ChemicalsListItem(text: "Aldrin", photo: photo3, descrip: "Aldrin and dieldrin are the common names of two structurally similar compounds that were once used as insecticides. They are chemicals that are made in the laboratory and do not occur naturally in the environment.  The two chemicals are discussed together because aldrin readily changes into dieldrin once it enters either the environment or your body. From the 1950s until 1970, aldrin and dieldrin entered the environment when farmers used these compounds to kill pests on crops and when exterminators used them to kill termites. Aldrin and dieldrin are still present in the environment from these past uses. Symptoms of aldrin and dieldrin poisoning have been seen in people who were exposed to very large amounts of these pesticides during their manufacture. Most of these people experienced convulsions or other nervous system effects, and some had kidney damage. Health effects in people exposed to smaller amounts of aldrin or dieldrin occur because levels of the chemicals build up in the body over time. Exposure to moderate levels of aldrin or dieldrin for a long time causes headaches, dizziness, irritability, vomiting, or uncontrollable muscle movements. We do not know whether aldrin or dieldrin affects the ability of people to fight diseases, or causes birth defects or cancer in people.")
        
        let photo4 = UIImage(named: "aniline.png")!
        let chem4 = ChemicalsListItem(text: "Aniline", photo: photo4, descrip: "Aniline is used to make a wide variety of products such as polyurethane foam, agricultural chemicals, synthetic dyes, antioxidants, stabilizers for the rubber industry, herbicides, varnishes and explosives.  If you work in a place that makes products like dyes, varnishes, herbicides, and explosives, you may be exposed to aniline. People living near uncontrolled hazardous waste sites may be exposed to higher than normal levels of aniline. Aniline has also been detected in tobacco smoke, so people who smoke or breath in second-hand smoke may also be exposed to aniline. Rats that ate food contaminated with aniline for life developed cancer of the spleen. Children should avoid playing in soils near uncontrolled hazardous waste sites where aniline may have been discarded. ")
        
        let photo5 = UIImage(named: "antimony.png")!
        let chem5 = ChemicalsListItem(text: "Antimony", photo: photo5, descrip: "Antimony isn't used alone because it breaks easily, but when mixed into alloys, it is used in lead storage batteries, solder, sheet and pipe metal, bearings, castings, and pewter. Antimony oxide is added to textiles and plastics to prevent them from catching fire. In polluted areas containing high levels of antimony, it may be found in the air, water, and soil. Exposure to antimony at high levels can result in a variety of adverse health effects. Breathing high levels for a long time can irritate your eyes and lungs and can cause heart and lung problems, stomach pain, diarrhea, vomiting, and stomach ulcers. We don't know whether antimony will cause cancer in people. Antimony can have beneficial effects when used for medical reasons. It has been used as a medicine to treat people infected with parasites.")
        
        let photo6 = UIImage(named: "arsenic.png")!
        let chem6 = ChemicalsListItem(text: "Arsenic", photo: photo6, descrip: "Arsenic is a naturally occurring element widely distributed in the earth’s crust. Organic arsenic compounds are used as pesticides, primarily on cotton fields and orchards. Inorganic arsenic compounds are mainly used to preserve wood. Several studies have shown that ingestion of inorganic arsenic can increase the risk of skin cancer and cancer in the liver, bladder, and lungs. Inhalation of inorganic arsenic can cause increased risk of lung cancer. There is some evidence that long-term exposure to arsenic in children may result in lower IQ scores. There is also some evidence that exposure to arsenic in the womb and early childhood may increase mortality in young adults. There is some evidence that inhaled or ingested arsenic can injure pregnant women or their unborn babies, although the studies are not definitive.")
        
        let photo7 = UIImage(named: "barium.png")!
        let chem7 = ChemicalsListItem(text: "Barium", photo: photo7, descrip: "Barium compounds are used by the oil and gas industries to make it easier to drill through rock by keeping the drill bit lubricated. They are also used to make paint, bricks, ceramics, glass, and rubber. The health effects of the different barium compounds depend on how well the compound dissolves in water or in the stomach contents. Barium has been found to potentially cause gastrointestinal disturbances and muscular weakness when people are exposed to it at levels above the EPA drinking water standards for relatively short periods of time. Some people who eat or drink amounts of barium above background levels found in food and water for a short period may experience vomiting, abdominal cramps, diarrhea, difficulties in breathing, increased or decreased blood pressure, numbness around the face, and muscle weakness. Barium compounds that do not dissolve well, such as barium sulfate, are not generally harmful. The EPA has determined that barium is not likely to be carcinogenic to humans following ingestion and that there is insufficient information to determine whether it will be carcinogenic to humans following inhalation exposure.")
        
        let photo8 = UIImage(named: "benzene.png")!
        let chem8 = ChemicalsListItem(text: "Benzene", photo: photo8, descrip: "description for chemical 3")
        
        let photo9 = UIImage(named: "benzidine.png")!
        let chem9 = ChemicalsListItem(text: "Benzidine", photo: photo9, descrip: "description for chemical 3")
        
        let photo10 = UIImage(named: "beryllium.png")!
        let chem10 = ChemicalsListItem(text: "Beryllium", photo: photo10, descrip: "description for chemical 3")
        
        let photo11 = UIImage(named: "butanone.png")!
        let chem11 = ChemicalsListItem(text: "Butanone", photo: photo3, descrip: "description for chemical 3")
        
        let photo12 = UIImage(named: "cadmium.png")!
        let chem12 = ChemicalsListItem(text: "Cadmium", photo: photo3, descrip: "description for chemical 3")
        
        let photo13 = UIImage(named: "aldrin.png")!
        let chem13 = ChemicalsListItem(text: "Chlordane", photo: photo3, descrip: "description for chemical 3")
        
        let photo14 = UIImage(named: "aldrin.png")!
        let chem14 = ChemicalsListItem(text: "Chlorobenzene", photo: photo3, descrip: "description for chemical 3")
        
        let photo15 = UIImage(named: "aldrin.png")!
        let chem15 = ChemicalsListItem(text: "Chloroform", photo: photo3, descrip: "description for chemical 3")
        
        let photo16 = UIImage(named: "aldrin.png")!
        let chem16 = ChemicalsListItem(text: "Chlorophenol", photo: photo3, descrip: "description for chemical 3")
        
        let photo17 = UIImage(named: "aldrin.png")!
        let chem17 = ChemicalsListItem(text: "Chromium", photo: photo3, descrip: "description for chemical 3")
        
        let photo18 = UIImage(named: "aldrin.png")!
        let chem18 = ChemicalsListItem(text: "Copper", photo: photo3, descrip: "description for chemical 3")
        
        let photo19 = UIImage(named: "aldrin.png")!
        let chem19 = ChemicalsListItem(text: "DDT", photo: photo3, descrip: "description for chemical 3")
        
        let photo20 = UIImage(named: "dichlorobenzene.png")!
        let chem20 = ChemicalsListItem(text: "Dichlorobenzene", photo: photo3, descrip: "description for chemical 3")
        
        let photo21 = UIImage(named: "dichloroethene.png")!
        let chem21 = ChemicalsListItem(text: "Dichloroethene", photo: photo3, descrip: "description for chemical 3")
        
        let photo22 = UIImage(named: "dieldrin.png")!
        let chem22 = ChemicalsListItem(text: "Dieldrin", photo: photo22, descrip: "Aldrin and dieldrin are the common names of two structurally similar compounds that were once used as insecticides. They are chemicals that are made in the laboratory and do not occur naturally in the environment.  The two chemicals are discussed together because aldrin readily changes into dieldrin once it enters either the environment or your body. From the 1950s until 1970, aldrin and dieldrin entered the environment when farmers used these compounds to kill pests on crops and when exterminators used them to kill termites. Aldrin and dieldrin are still present in the environment from these past uses. Symptoms of aldrin and dieldrin poisoning have been seen in people who were exposed to very large amounts of these pesticides during their manufacture. Most of these people experienced convulsions or other nervous system effects, and some had kidney damage. Health effects in people exposed to smaller amounts of aldrin or dieldrin occur because levels of the chemicals build up in the body over time. Exposure to moderate levels of aldrin or dieldrin for a long time causes headaches, dizziness, irritability, vomiting, or uncontrollable muscle movements. We do not know whether aldrin or dieldrin affects the ability of people to fight diseases, or causes birth defects or cancer in people.")
        
        let photo23 = UIImage(named: "aldrin.png")!
        let chem23 = ChemicalsListItem(text: "Dimethylmercury", photo: photo3, descrip: "description for chemical 3")
        
        let photo24 = UIImage(named: "aldrin.png")!
        let chem24 = ChemicalsListItem(text: "Endosulfan", photo: photo3, descrip: "description for chemical 3")
        
        let photo25 = UIImage(named: "aldrin.png")!
        let chem25 = ChemicalsListItem(text: "Heptachlor", photo: photo3, descrip: "description for chemical 3")
        
        let photo26 = UIImage(named: "aldrin.png")!
        let chem26 = ChemicalsListItem(text: "Lead", photo: photo3, descrip: "description for chemical 3")
        
        let photo27 = UIImage(named: "aldrin.png")!
        let chem27 = ChemicalsListItem(text: "Manganese", photo: photo3, descrip: "description for chemical 3")
        
        let photo28 = UIImage(named: "aldrin.png")!
        let chem28 = ChemicalsListItem(text: "Mercury", photo: photo3, descrip: "description for chemical 3")
        
        let photo29 = UIImage(named: "aldrin.png")!
        let chem29 = ChemicalsListItem(text: "Methyl Mercury", photo: photo3, descrip: "description for chemical 3")
        
        let photo30 = UIImage(named: "aldrin.png")!
        let chem30 = ChemicalsListItem(text: "Methylene Chloride", photo: photo3, descrip: "description for chemical 3")
        
        let photo31 = UIImage(named: "aldrin.png")!
        let chem31 = ChemicalsListItem(text: "Methylnapthalene", photo: photo3, descrip: "description for chemical 3")
        
        let photo32 = UIImage(named: "aldrin.png")!
        let chem32 = ChemicalsListItem(text: "Napthalene", photo: photo3, descrip: "description for chemical 3")
        
        let photo33 = UIImage(named: "aldrin.png")!
        let chem33 = ChemicalsListItem(text: "Nickel", photo: photo3, descrip: "description for chemical 3")
        
        let photo34 = UIImage(named: "aldrin.png")!
        let chem34 = ChemicalsListItem(text: "Nitrobenzene", photo: photo3, descrip: "description for chemical 3")
        
        let photo35 = UIImage(named: "aldrin.png")!
        let chem35 = ChemicalsListItem(text: "Pentachlorophen0l", photo: photo3, descrip: "description for chemical 3")
        
        let photo36 = UIImage(named: "aldrin.png")!
        let chem36 = ChemicalsListItem(text: "Phenol", photo: photo3, descrip: "description for chemical 3")
        
        let photo37 = UIImage(named: "aldrin.png")!
        let chem37 = ChemicalsListItem(text: "Selenium", photo: photo3, descrip: "description for chemical 3")
        
        let photo38 = UIImage(named: "aldrin.png")!
        let chem38 = ChemicalsListItem(text: "Silver", photo: photo3, descrip: "description for chemical 3")
        
        let photo39 = UIImage(named: "aldrin.png")!
        let chem39 = ChemicalsListItem(text: "Tetrachloroethene", photo: photo3, descrip: "description for chemical 3")
        
        let photo40 = UIImage(named: "aldrin.png")!
        let chem40 = ChemicalsListItem(text: "Thallium", photo: photo3, descrip: "description for chemical 3")
        
        let photo41 = UIImage(named: "aldrin.png")!
        let chem41 = ChemicalsListItem(text: "Toluene", photo: photo3, descrip: "description for chemical 3")
        
        let photo42 = UIImage(named: "aldrin.png")!
        let chem42 = ChemicalsListItem(text: "Trichlorobenzene", photo: photo3, descrip: "description for chemical 3")
        
        let photo43 = UIImage(named: "aldrin.png")!
        let chem43 = ChemicalsListItem(text: "Trichloroethane", photo: photo3, descrip: "description for chemical 3")
        
        let photo44 = UIImage(named: "aldrin.png")!
        let chem44 = ChemicalsListItem(text: "Trichloroethene", photo: photo3, descrip: "description for chemical 3")
        
        let photo45 = UIImage(named: "aldrin.png")!
        let chem45 = ChemicalsListItem(text: "Trichloroethylene", photo: photo3, descrip: "description for chemical 3")
        
        let photo46 = UIImage(named: "aldrin.png")!
        let chem46 = ChemicalsListItem(text: "Vanadium", photo: photo3, descrip: "description for chemical 3")
        
        let photo47 = UIImage(named: "aldrin.png")!
        let chem47 = ChemicalsListItem(text: "Vinyl Chloride", photo: photo3, descrip: "description for chemical 3")
        
        let photo48 = UIImage(named: "aldrin.png")!
        let chem48 = ChemicalsListItem(text: "Zinc", photo: photo3, descrip: "description for chemical 3")
        
        let photo49 = UIImage(named: "acenaphthylene.png")!
        let chem49 = ChemicalsListItem(text: "Benzo(a)anthracene", photo: photo1, descrip: "Benzo(a)anthracene is one of a group of polycyclic aromatic hydrocarbons (PAHs). PAHs are a group of chemicals that are formed during the incomplete burning of coal, oil, gas, wood, garbage, or other organic substances, such as tobacco and charbroiled meat. There are more than 100 different PAHs. PAHs usually occur naturally, but they can be manufactured as individual compounds for research purposes. PAHs can be harmful to your health under some circumstances. Studies of people show that individuals exposed by breathing or skin contact for long periods to mixtures that contain PAHs and other compounds can develop cancer.")
        
        let photo50 = UIImage(named: "acenaphthylene.png")!
        let chem50 = ChemicalsListItem(text: "Benzo(a)pyrene", photo: photo1, descrip: "Benzo(a)pyrene is one of a group of polycyclic aromatic hydrocarbons (PAHs). PAHs are a group of chemicals that are formed during the incomplete burning of coal, oil, gas, wood, garbage, or other organic substances, such as tobacco and charbroiled meat. There are more than 100 different PAHs. PAHs usually occur naturally, but they can be manufactured as individual compounds for research purposes. PAHs can be harmful to your health under some circumstances. Studies of people show that individuals exposed by breathing or skin contact for long periods to mixtures that contain PAHs and other compounds can develop cancer.")
        
        let photo51 = UIImage(named: "acenaphthylene.png")!
        let chem51 = ChemicalsListItem(text: "Benzo(b)flouranthene", photo: photo1, descrip: "Benzo(b)flouranthene is one of a group of polycyclic aromatic hydrocarbons (PAHs). PAHs are a group of chemicals that are formed during the incomplete burning of coal, oil, gas, wood, garbage, or other organic substances, such as tobacco and charbroiled meat. There are more than 100 different PAHs. PAHs usually occur naturally, but they can be manufactured as individual compounds for research purposes. PAHs can be harmful to your health under some circumstances. Studies of people show that individuals exposed by breathing or skin contact for long periods to mixtures that contain PAHs and other compounds can develop cancer.")
        
        let photo52 = UIImage(named: "acenaphthylene.png")!
        let chem52 = ChemicalsListItem(text: "Benzo(ghi)perylene", photo: photo1, descrip: "Benzo(ghi)perylene is one of a group of polycyclic aromatic hydrocarbons (PAHs). PAHs are a group of chemicals that are formed during the incomplete burning of coal, oil, gas, wood, garbage, or other organic substances, such as tobacco and charbroiled meat. There are more than 100 different PAHs. PAHs usually occur naturally, but they can be manufactured as individual compounds for research purposes. PAHs can be harmful to your health under some circumstances. Studies of people show that individuals exposed by breathing or skin contact for long periods to mixtures that contain PAHs and other compounds can develop cancer.")
        
        let photo53 = UIImage(named: "acenaphthylene.png")!
        let chem53 = ChemicalsListItem(text: "Benzo(k)flouranthene", photo: photo1, descrip: "Benzo(k)flouranthene is one of a group of polycyclic aromatic hydrocarbons (PAHs). PAHs are a group of chemicals that are formed during the incomplete burning of coal, oil, gas, wood, garbage, or other organic substances, such as tobacco and charbroiled meat. There are more than 100 different PAHs. PAHs usually occur naturally, but they can be manufactured as individual compounds for research purposes. PAHs can be harmful to your health under some circumstances. Studies of people show that individuals exposed by breathing or skin contact for long periods to mixtures that contain PAHs and other compounds can develop cancer.")
        
        let photo54 = UIImage(named: "acenaphthylene.png")!
        let chem54 = ChemicalsListItem(text: "Chrysene", photo: photo1, descrip: "Chrysene is one of a group of polycyclic aromatic hydrocarbons (PAHs). PAHs are a group of chemicals that are formed during the incomplete burning of coal, oil, gas, wood, garbage, or other organic substances, such as tobacco and charbroiled meat. There are more than 100 different PAHs. PAHs usually occur naturally, but they can be manufactured as individual compounds for research purposes. PAHs can be harmful to your health under some circumstances. Studies of people show that individuals exposed by breathing or skin contact for long periods to mixtures that contain PAHs and other compounds can develop cancer.")
        
        let photo55 = UIImage(named: "acenaphthylene.png")!
        let chem55 = ChemicalsListItem(text: "Dibenzo(a,h)anthracene", photo: photo1, descrip: "Dibenzo(a,h)anthracene is one of a group of polycyclic aromatic hydrocarbons (PAHs). PAHs are a group of chemicals that are formed during the incomplete burning of coal, oil, gas, wood, garbage, or other organic substances, such as tobacco and charbroiled meat. There are more than 100 different PAHs. PAHs usually occur naturally, but they can be manufactured as individual compounds for research purposes. PAHs can be harmful to your health under some circumstances. Studies of people show that individuals exposed by breathing or skin contact for long periods to mixtures that contain PAHs and other compounds can develop cancer.")
        
        let photo56 = UIImage(named: "acenaphthylene.png")!
        let chem56 = ChemicalsListItem(text: "Flouranthene", photo: photo1, descrip: "Flouranthene is one of a group of polycyclic aromatic hydrocarbons (PAHs). PAHs are a group of chemicals that are formed during the incomplete burning of coal, oil, gas, wood, garbage, or other organic substances, such as tobacco and charbroiled meat. There are more than 100 different PAHs. PAHs usually occur naturally, but they can be manufactured as individual compounds for research purposes. PAHs can be harmful to your health under some circumstances. Studies of people show that individuals exposed by breathing or skin contact for long periods to mixtures that contain PAHs and other compounds can develop cancer.")
        
        let photo57 = UIImage(named: "acenaphthylene.png")!
        let chem57 = ChemicalsListItem(text: "Indeno(1,2,3-cd)pyrene", photo: photo1, descrip: "Indeno(1,2,3-cd)pyrene is one of a group of polycyclic aromatic hydrocarbons (PAHs). PAHs are a group of chemicals that are formed during the incomplete burning of coal, oil, gas, wood, garbage, or other organic substances, such as tobacco and charbroiled meat. There are more than 100 different PAHs. PAHs usually occur naturally, but they can be manufactured as individual compounds for research purposes. PAHs can be harmful to your health under some circumstances. Studies of people show that individuals exposed by breathing or skin contact for long periods to mixtures that contain PAHs and other compounds can develop cancer.")
        
        let photo58 = UIImage(named: "acenaphthylene.png")!
        let chem58 = ChemicalsListItem(text: "Phenanthrene", photo: photo1, descrip: "Phenanthrene is one of a group of polycyclic aromatic hydrocarbons (PAHs). PAHs are a group of chemicals that are formed during the incomplete burning of coal, oil, gas, wood, garbage, or other organic substances, such as tobacco and charbroiled meat. There are more than 100 different PAHs. PAHs usually occur naturally, but they can be manufactured as individual compounds for research purposes. PAHs can be harmful to your health under some circumstances. Studies of people show that individuals exposed by breathing or skin contact for long periods to mixtures that contain PAHs and other compounds can develop cancer.")
        
        let photo59 = UIImage(named: "acenaphthylene.png")!
        let chem59 = ChemicalsListItem(text: "Pyrene", photo: photo1, descrip: "Pyrene is one of a group of polycyclic aromatic hydrocarbons (PAHs). PAHs are a group of chemicals that are formed during the incomplete burning of coal, oil, gas, wood, garbage, or other organic substances, such as tobacco and charbroiled meat. There are more than 100 different PAHs. PAHs usually occur naturally, but they can be manufactured as individual compounds for research purposes. PAHs can be harmful to your health under some circumstances. Studies of people show that individuals exposed by breathing or skin contact for long periods to mixtures that contain PAHs and other compounds can develop cancer.")
        
        chemicalsList += [chem1, chem2, chem3, chem4, chem5, chem6, chem7, chem8, chem9, chem10, chem11, chem12, chem13, chem14, chem15, chem16, chem17, chem18, chem19, chem20, chem21, chem22, chem23, chem24, chem25, chem26, chem27, chem28, chem29, chem30, chem31, chem32, chem33, chem34, chem35, chem36, chem37, chem38, chem39, chem40, chem41, chem42, chem43, chem44, chem45, chem46, chem47, chem48, chem49, chem50, chem51, chem52, chem53, chem54, chem55, chem56, chem57, chem58, chem59]
        
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
    
    @IBAction func unwindToHome(segue:UIStoryboardSegue) {
        
    }

}
