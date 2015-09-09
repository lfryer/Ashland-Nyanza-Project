//
//  ChemicalDetailsViewController.swift
//  Ashland-Nyanza Project
//
//  Created by Lorraine Fryer on 9/8/15.
//  Copyright (c) 2015 Lorraine Fryer. All rights reserved.
//

import UIKit

class ChemicalDetailsViewController: UIViewController {
    @IBOutlet weak var chemicalImage: UIImageView!
    @IBOutlet weak var chemicalName: UILabel!
    @IBOutlet weak var chemicalDescrip: UILabel!
    @IBOutlet weak var chemicalScrollView: UIScrollView!
    var currentChemical: ChemicalsListItem?
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let currentChemical = currentChemical {
            chemicalDescrip.text = currentChemical.descrip
            chemicalName.text = currentChemical.text
            chemicalImage.image = currentChemical.photo
            let fullScreenRect = UIScreen.mainScreen().applicationFrame
            chemicalScrollView.contentSize = CGSizeMake(fullScreenRect.width, fullScreenRect.height*2.0)
        }
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
