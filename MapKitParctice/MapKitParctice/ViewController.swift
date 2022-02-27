//
//  ViewController.swift
//  MapKitParctice
//
//  Created by Wejdan Alkhaldi on 26/07/1443 AH.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let initialLoc = CLLocation(latitude: 24.693719, longitude: 46.723596)
        setStartingLocation(location: initialLoc, distance: 1000)
        addAnnotation()
       
    }

    func setStartingLocation(location:CLLocation, distance: CLLocationDistance){
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: distance, longitudinalMeters: distance)
        mapView.setRegion(region, animated: true)
        mapView.setCameraBoundary(MKMapView.CameraBoundary(coordinateRegion:region), animated: true)
        let zoomRange = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 300000)
        mapView.setCameraZoomRange(zoomRange, animated: true)
        
        
    }
    func addAnnotation(){
        let pin = MKPointAnnotation()
        pin.coordinate = CLLocationCoordinate2D(latitude: 24.693719, longitude: 46.723596)
        pin.title = "Coffee"
        pin.subtitle = "Wejdan Coffee"
        mapView.addAnnotation(pin)
        
    }
    
}

