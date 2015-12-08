//
//  SiteMapViewController.swift
//  Ashland-Nyanza Project
//
//  Created by Lorraine Fryer on 8/17/15.
//  Copyright (c) 2015 Lorraine Fryer. All rights reserved.
//

import UIKit
import MapKit

class SiteMapViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    @IBAction func close() {
    dismissViewControllerAnimated(true, completion: nil)
    }
}
