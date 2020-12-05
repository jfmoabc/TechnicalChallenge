//
//  LocationViewController.swift
//  TechnicalChallenge
//
//  Created by OnVirtualGym OVG on 01/12/2020.
//

import UIKit

class LocationViewController: UIViewController {

    @IBOutlet weak var locationView: LocationView!
    var locationService: LocationService?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        locationView.didTapAllow = {[weak self] in
            self?.locationService?.requestLocationAuthorization()
        }
        
        locationService?.didChangeStatus = { [weak self] success in
            if success{
                self?.locationService?.getLocation()
            }
        }
        
        locationService?.newLocation = {result in
            switch result {
            case .success(let location):
                print(location)
            case .failure(let error):
                assertionFailure("Error getting location \(error)")
            }
            
        }
    }
    

}
