//
//  MapViewController.swift
//  TripPin!
//
//  Created by hansung on 2023/06/19.
//

import MapKit


class MapViewController: UIViewController {
    
    @IBAction func sgcValueChanged(_ sender: UISegmentedControl) {

        switch sender.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .hybrid
        case 2:
            mapView.mapType = .satellite
        default:
            break
        }
    }

    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mark = Marker(
                 title: "한성대학교",
                 subtitle: "오고싶은 대학",
                 coordinate: CLLocationCoordinate2D(latitude: 37.582874, longitude: 127.010600))
        
        mapView.addAnnotation(mark)
        
        let mark2 = Marker(
                 title: "남산타워",
                 subtitle: "야경이 예뻐요",
                 coordinate: CLLocationCoordinate2D(latitude: 37.551224, longitude: 126.988220))
        
        mapView.addAnnotation(mark2)
        
        let mark3 = Marker(
                 title: "롯데타워",
                 subtitle: "야경이 예뻐요",
                 coordinate: CLLocationCoordinate2D(latitude: 37.512566, longitude: 127.102537))
        
        mapView.addAnnotation(mark3)
        
        let mark4 = Marker(
                 title: "인천공항",
                 subtitle: "여행을 떠나요",
                 coordinate: CLLocationCoordinate2D(latitude: 37.470623, longitude: 126.432484))
        
        mapView.addAnnotation(mark4)
    }
}
