//
//  MapViewController.swift
//  Swift4_Part2
//
//  Created by Admin on 21/10/18.
//  Copyright © 2018 Equitronix. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    var mapView: MKMapView!
    override func loadView() {
        mapView = MKMapView();
        view = mapView;
        
        let segmentedControl = UISegmentedControl(items: ["Standard","Hybrid","Satellite"]);
        segmentedControl.backgroundColor = UIColor.white.withAlphaComponent(0.5);
        segmentedControl.selectedSegmentIndex = 0;
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false;
        view.addSubview(segmentedControl)
        
        let topConstraint = segmentedControl.topAnchor.constraint(equalTo: view.topAnchor);
        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor);
        let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor);
        
        topConstraint.isActive = true;
        leadingConstraint.isActive = true;
        trailingConstraint.isActive = true;
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    


}
