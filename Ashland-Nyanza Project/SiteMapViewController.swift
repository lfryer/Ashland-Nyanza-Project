//
//  SiteMapViewController.swift
//  Ashland-Nyanza Project
//
//  Created by Lorraine Fryer on 8/17/15.
//  Copyright (c) 2015 Lorraine Fryer. All rights reserved.
//

import UIKit
import MapKit

class SiteMapViewController: UIViewController, MKMapViewDelegate {
    @IBOutlet weak var mapView: MKMapView!
    var siteList = [ListItem]()
    @IBAction func close() {
    dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let initialLocation = CLLocation(latitude: 42.258417, longitude: -71.472848)
        centerMapOnLocation(initialLocation)
        
        mapView.delegate = self
        
        // show location on map
        let ashlandPublicLibrary = MapLocation(
            title: "Ashland Public Library",
            coordinate: CLLocationCoordinate2D(latitude: 42.260440, longitude: -71.463296))
        
        mapView.addAnnotation(ashlandPublicLibrary)
        
        loadSiteList()

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
    
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
            regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        if let annotation = annotation as? MapLocation {
            let identifier = "pin"
            var view: MKPinAnnotationView
            if let dequeuedView = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier)
                as? MKPinAnnotationView { // 2
                    dequeuedView.annotation = annotation
                    view = dequeuedView
            } else {
                // 3
                view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
                view.canShowCallout = true
                view.calloutOffset = CGPoint(x: -5, y: 5)
                view.rightCalloutAccessoryView = UIButton(type:.DetailDisclosure) as UIView
            }
            return view
        }
        return nil
    }
    
    func mapView(mapView: MKMapView, annotationView view: MKAnnotationView,
        calloutAccessoryControlTapped control: UIControl) {
            let location = view.annotation as! MapLocation
            self.performSegueWithIdentifier("goToLocation", sender: self)
            
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToLocation" {
            let siteDetailsViewController = segue.destinationViewController as!
            SiteDetailsViewController
            let selectedSite = siteList[0]
            siteDetailsViewController.currentSite = selectedSite
                    
        }
                
    }

}


