//
//  MapLocation.swift
//  Ashland-Nyanza Project
//
//  Created by Lorraine Fryer on 12/8/15.
//  Copyright © 2015 Lorraine Fryer. All rights reserved.
//

import Foundation

import MapKit

class MapLocation: NSObject, MKAnnotation {
    let locationName: String
    let coordinate: CLLocationCoordinate2D
    
    init(locationName: String, coordinate: CLLocationCoordinate2D) {
        self.locationName = locationName
        self.coordinate = coordinate
        
        super.init()
    }

}