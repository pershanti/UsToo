//
//  MapEntryViewController.swift
//  UsToo
//
//  Created by Shantini Vyas on 10/21/17.
//  Copyright © 2017 Shantini Vyas. All rights reserved.
//

import UIKit
import MapKit

class MapEntryViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate  {
    

    @IBAction func useCurrent(_ sender: UIButton) {
        
        performSegue(withIdentifier: "DataEntrySegue", sender: self)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DataEntrySegue"{
            let navigationController = segue.destination as! UINavigationController
            let controller = navigationController.topViewController as! FormViewController
            controller.location = mapView.userLocation.location
        }
    }
    
    @IBOutlet weak var mapView: MKMapView!
    let manager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        mapView.delegate = self
        mapView.mapType = MKMapType.standard
        
        // Do any additional setup after loading the view.
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
