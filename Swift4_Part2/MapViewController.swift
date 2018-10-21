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
        
        segmentedControl.addTarget(self, action: #selector(mapTypeChanged(_:)), for: .valueChanged)
        
        let topConstraint = segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8);
        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor);
        let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor);
        
        topConstraint.isActive = true;
        leadingConstraint.isActive = true;
        trailingConstraint.isActive = true;
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @objc private func mapTypeChanged(_ segControl: UISegmentedControl){
        switch segControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .hybrid
        case 2:
            mapView.mapType = .satellite
        default:
            break;
        }
    }
    


}
