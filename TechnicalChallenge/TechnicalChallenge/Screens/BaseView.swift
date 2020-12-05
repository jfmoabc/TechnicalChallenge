//
//  BaseView.swift
//  TechnicalChallenge
//
//  Created by João Oliveira on 01/12/2020.
//

import UIKit

@IBDesignable class BaseView : UIView{
    override init(frame: CGRect){
        super.init(frame: frame)
        self.configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder:  aDecoder)
        self.configure()        
    }
    
    func configure(){
        
    }
}
