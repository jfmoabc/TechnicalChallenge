//
//  RestaurantTableViewCell.swift
//  TechnicalChallenge
//
//  Created by João Oliveira on 01/12/2020.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {

    @IBOutlet weak var restaurantImageView : UIImageView!
    @IBOutlet weak var restaurantNameLabel : UILabel!
    @IBOutlet weak var locationLabel : UILabel!
    @IBOutlet weak var locationImageView : UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
