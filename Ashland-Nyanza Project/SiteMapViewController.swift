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
    var sitesByTitle = [String: ListItem]()
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
        
        let baseballField = MapLocation(
            title: "Baseball Field",
            coordinate: CLLocationCoordinate2D(latitude: 42.253968, longitude: -71.476178))
        
        let megunkoRoad = MapLocation(
            title: "Megunko Road",
            coordinate: CLLocationCoordinate2D(latitude: 42.258560, longitude: -71.472655))
        
        let telechronClockTower = MapLocation(
            title: "Telechron Clock Tower",
            coordinate: CLLocationCoordinate2D(latitude: 42.259218, longitude: -71.457563))
        
        let sudburyRiver = MapLocation(
            title: "Sudbury River",
            coordinate: CLLocationCoordinate2D(latitude: 42.262255, longitude: -71.480031))
        
        let commuterRail = MapLocation(
            title: "Commuter Rail",
            coordinate: CLLocationCoordinate2D(latitude: 42.261499, longitude: -71.482353))
        
        mapView.addAnnotation(ashlandPublicLibrary)
        mapView.addAnnotation(baseballField)
        mapView.addAnnotation(megunkoRoad)
        mapView.addAnnotation(telechronClockTower)
        mapView.addAnnotation(sudburyRiver)
        mapView.addAnnotation(commuterRail)

        
        loadSiteList()

    }
    
    func loadSiteList() {
        
        let photo1 = UIImage(named: "AshlandPL.png")!
        let site1 = ListItem(text: "Ashland Public Library", photo: photo1, descrip: "This is the Ashland Public Library, where the EPA records have been stored for decades, forgotten in a small, largely unused room. Also the location for the exhibition portion of the Ashland-Nyanza Project.")
        
        let photo2 = UIImage(named: "Ballfield.png")!
        let site2 = ListItem(text: "Baseball Field", photo: photo2, descrip: "This is a baseball field across the street from the Nyanza property, where many children growing up in Ashland spend hours at a time in practice and games.")
        
        let photo3 = UIImage(named: "Megunko.png")!
        let site3 = ListItem(text: "Megunko Road", photo: photo3, descrip: "At the end of Megunko Road is this large building, currently in use by a company leasing the site. A great deal of the administration of Nyanza Chemical occurred in this building.")
        
        let photo4 = UIImage(named: "Telechron.png")!
        let site4 = ListItem(text: "Telechron Clock Tower", photo: photo4, descrip: "The Telechron Clock Tower is both a landmark for the annual Boston Marathon and a reminder of the history of industry in the town of Ashland.")
        
        let photo5 = UIImage(named: "SudburyRiver.png")!
        let site5 = ListItem(text: "Sudbury River", photo: photo5, descrip: "At the end of Megunko Road is this large building, currently in use by a company leasing the site. A great deal of the administration of Nyanza Chemical occurred in this building.")
        
        let photo6 = UIImage(named: "CommuterRail.png")!
        let site6 = ListItem(text: "Commuter Rail", photo: photo6, descrip: "This busy commuter rail station takes people to and from work and school every day; it is adjacent to the Nyanza superfund site.")
        
        /*let photo3 = UIImage(named: "Megunko.png")!
        let site3 = ListItem(text: "Megunko Road", photo: photo3, descrip: "At the end of Megunko Road is this large building, currently in use by a company leasing the site. A great deal of the administration of Nyanza Chemical occurred in this building.")
        
        let photo3 = UIImage(named: "Megunko.png")!
        let site3 = ListItem(text: "Megunko Road", photo: photo3, descrip: "At the end of Megunko Road is this large building, currently in use by a company leasing the site. A great deal of the administration of Nyanza Chemical occurred in this building.")
        
        let photo3 = UIImage(named: "Megunko.png")!
        let site3 = ListItem(text: "Megunko Road", photo: photo3, descrip: "At the end of Megunko Road is this large building, currently in use by a company leasing the site. A great deal of the administration of Nyanza Chemical occurred in this building.")*/
        
        
        siteList += [site1, site2, site3, site4, site5, site6]
        sitesByTitle["Ashland Public Library"] = site1
        sitesByTitle["Baseball Field"] = site2
        sitesByTitle["Megunko Road"] = site3
        sitesByTitle["Telechron Clock Tower"] = site4
        sitesByTitle["Sudbury River"] = site5
        sitesByTitle["Commuter Rail"] = site6
        
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
                view.calloutOffset = CGPoint(x: -9, y: 0)
                view.rightCalloutAccessoryView = UIButton(type:.DetailDisclosure) as UIView
            }
            return view
        }
        return nil
    }
    
    func mapView(mapView: MKMapView, annotationView view: MKAnnotationView,
        calloutAccessoryControlTapped control: UIControl) {
            let location = view.annotation as! MapLocation
            self.performSegueWithIdentifier("goToLocation", sender: location)
            
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToLocation" {
            if let tappedLocation = sender as? MapLocation {
                let siteDetailsViewController = segue.destinationViewController as!
                SiteDetailsViewController
                let selectedSite = sitesByTitle[tappedLocation.title!]
                siteDetailsViewController.currentSite = selectedSite
            }
            
        }
                
    }

}


