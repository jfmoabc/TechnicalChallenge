//
//  DetailsFoodView.swift
//  TechnicalChallenge
//
//  Created by João Oliveira on 01/12/2020.
//

import UIKit
import MapKit

@IBDesignable class DetailsFoodView: BaseView {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var shopLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!

    @IBAction func handleControl(_sender: Any) {
        
    }
}
