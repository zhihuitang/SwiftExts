//
//  MKMapView.swift
//  SwiftyExtension
//
//  Created by Zhihui Tang on 2018-04-19.
//  Copyright © 2018 Zhihui Tang. All rights reserved.
//

import Foundation
import MapKit

public extension MKMapView {
    func zoomToUserLocation() {
        guard let coordinate = userLocation.location?.coordinate else { return }
        let region = MKCoordinateRegionMakeWithDistance(coordinate, 10000, 10000)
        setRegion(region, animated: true)
    }
}

