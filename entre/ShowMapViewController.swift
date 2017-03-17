//
//  MapViewController.swift
//  entre
//
//  Created by Mac on 3/16/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class ShowMapViewController: UIViewController, CLLocationManagerDelegate {
    weak var delegate: ShowMapViewControllerDelegate?
    var locationManager: CLLocationManager!
    
    @IBAction func MyLocation(_ sender: Any?){
        let userLocation = MapView.userLocation
        print("user location is \(userLocation)")
        if userLocation.location?.coordinate != nil{
            let region = MKCoordinateRegionMakeWithDistance((userLocation.location?.coordinate)!, 0, 0)
            print("region  is \(region)")
            MapView.setRegion(region, animated: true)
        }

    }


    @IBOutlet weak var MapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(CLLocationManager.locationServicesEnabled()){
            locationManager = CLLocationManager()
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.requestAlwaysAuthorization()
            locationManager.startUpdatingLocation()
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2D(latitude: 37.375400, longitude: -121.910158)
            MapView.addAnnotation(annotation)
        }
    MyLocation(self)

    }
    
//    let baseUrl = "https://maps.googleapis.com/maps/api/geocode/json?"
//    let apikey = ""
//
//    
//    func getLatLngForZip(zipCode: String) {
//        let url = NSURL(string: "\(baseUrl)address=\(zipCode)&key=\(apikey)")
//        let data = NSData(contentsOf: url! as URL)
//        let json = try! JSONSerialization.jsonObject(with: data! as Data, options: JSONSerialization.ReadingOptions.allowFragments) as! NSDictionary
//        if let result = json["results"] as? NSArray {
//            if let geometry = result[0]["geometry"] as? NSDictionary {
//                if let location = geometry["location"] as? NSDictionary {
//                    let latitude = location["lat"] as! Float
//                    let longitude = location["lng"] as! Float
//                    print("\n\(latitude), \(longitude)")
//                }
//            }
//        }
//    }
    
            



//        let initiallocation = CLLocation(latitude: 37.375400, longitude: -121.910158)
//        let initiallocation = MapView.userLocation.location?.coordinate.latitude
//        centerMapOnLocation(location: CLLocation(coder: initiallocation))


    
//    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!){
//        print("===================================================")
//        let location = locations.last as! CLLocation
//        print("location is here\(location)")
//
//        
//        let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
//        print("center is here\(center)")
//        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
//        print("region is here\(region)")
//
//        self.MapView.setRegion(region, animated: true)
//        MapView.showsUserLocation = true
//    }
    
    
    
//
//    let regionRadius: CLLocationDistance = 1000
//    func centerMapOnLocation(location: CLLocation){
//        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 2.0, regionRadius * 2.0)
//        MapView.setRegion(coordinateRegion, animated: true)
//    }
//
    

}
