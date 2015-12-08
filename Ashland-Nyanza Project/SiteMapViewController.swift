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
            locationName: "Ashland Public Library",
            coordinate: CLLocationCoordinate2D(latitude: 42.260440, longitude: -71.463296))
        
        mapView.addAnnotation(ashlandPublicLibrary)

    }
    
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
            regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView! {
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
}

