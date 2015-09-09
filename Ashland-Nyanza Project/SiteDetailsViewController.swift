//
//  SiteDetailsViewController.swift
//  Ashland-Nyanza Project
//
//  Created by Lorraine Fryer on 8/20/15.
//  Copyright (c) 2015 Lorraine Fryer. All rights reserved.
//

import UIKit

class SiteDetailsViewController: UIViewController {
    @IBOutlet weak var siteTitleLabel: UILabel!
    @IBOutlet weak var siteDescriptionLabel: UILabel!
    @IBOutlet weak var sitePhoto: UIImageView!
    var currentSite: ListItem?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let currentSite = currentSite {
            siteDescriptionLabel.text = currentSite.descrip
            siteTitleLabel.text = currentSite.text
            sitePhoto.image = currentSite.photo
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
