//
//  LocationView.swift
//  TechnicalChallenge
//
//  Created by João Oliveira on 01/12/2020.
//

import UIKit

@IBDesignable class LocationView: BaseView  {
    @IBOutlet weak var allowButton: UIButton!
    @IBOutlet weak var denyButton: UIButton!
    
    var didTapAllow: (() -> Void)?
    
    @IBAction func allowAction(_ sender: UIButton){
        didTapAllow?()
        
    }
    @IBAction func denyAction(_ sender: UIButton){
        
    }
}
