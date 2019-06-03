//
//  ViewController.swift
//  College
//
//  Created by Manjit Singh on 12/11/17.
//  Copyright © 2017 Manjit Singh. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController , CLLocationManagerDelegate{

    @IBOutlet weak var location: MKMapView!
    var mapManager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapManager.delegate = self
        mapManager.desiredAccuracy = kCLLocationAccuracyBest
        mapManager.requestWhenInUseAuthorization()
        mapManager.stopUpdatingLocation()
        loadData()
    }

    func loadData(){
        //42.975814500, -82.347484600 sarnia
        //43.773257400, -79.335899300 toronto
        //43.627508200, -79.674684600 mississauga
        // Here we define the map's zoom. The value 0.01 is a pattern
        let zoom:MKCoordinateSpan = MKCoordinateSpanMake(0.1, 0.1)
        
        // Store latitude and longitude received from smartphone
        let collegeLocation1:CLLocationCoordinate2D = CLLocationCoordinate2DMake(42.975814500 , -82.347484600)
        let collegeLocation2:CLLocationCoordinate2D = CLLocationCoordinate2DMake(43.773257400 , -79.335899300)
        let collegeLocation3:CLLocationCoordinate2D = CLLocationCoordinate2DMake(43.627508200 , -79.674684600)
        // Based on myLocation and zoom define the region to be shown on the screen
        let region1:MKCoordinateRegion = MKCoordinateRegionMake(collegeLocation1, zoom)
        let region2:MKCoordinateRegion = MKCoordinateRegionMake(collegeLocation2, zoom)
        let region3:MKCoordinateRegion = MKCoordinateRegionMake(collegeLocation3, zoom)
        location.setRegion(region1, animated: true)
        location.setRegion(region2, animated: true)
        location.setRegion(region3, animated: true)
        let annotation = MKPointAnnotation()
        annotation.coordinate = collegeLocation1
        annotation.title = "Lambton College"
        annotation.subtitle = "Main campus in Sarnia"
        location.addAnnotation(annotation)
        let annotation1 = MKPointAnnotation()
        annotation1.coordinate = collegeLocation2
        annotation1.title = "Lambton College"
        annotation1.subtitle = "Campus in Toronto"
        location.addAnnotation(annotation1)
        let annotation2 = MKPointAnnotation()
        annotation2.coordinate = collegeLocation3
        annotation2.title = "Lambton College"
        annotation2.subtitle = "Campus in Mississauga"
        location.addAnnotation(annotation2)
        
    }
    
//    @IBAction func sarniabutton(_ sender: Any) {
//        self.performSegue(withIdentifier: "sarniatable", sender: self)
//    }
//
//    @IBAction func toronto(_ sender: Any) {
//        self.performSegue(withIdentifier: "torontotable", sender: self)
//    }
//
//    @IBAction func mississaugatablebutton(_ sender: Any) {
//        self.performSegue(withIdentifier: "mississaugatable", sender: self)
//    }
//
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

