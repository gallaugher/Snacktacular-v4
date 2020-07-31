//
//  SpotTableViewCell.swift
//  Snacktacular
//
//  Created by John Gallaugher on 6/9/20.
//  Copyright © 2020 John Gallaugher. All rights reserved.
//

import UIKit
import CoreLocation

class SpotTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    var currentLocation: CLLocation!
    var spot: Spot! {
        didSet {
            nameLabel.text = spot.name
            let roundedAverage = ((spot.averageRating * 10).rounded()) / 10
            ratingLabel.text = "Avg. Rating: \(roundedAverage)"
            
            guard let currentLocation = currentLocation else {
                distanceLabel.text = "Distance: -.-"
                return
            }
            let distanceInMeters = spot.location.distance(from: currentLocation)
            let distanceInMiles = ((distanceInMeters * 0.00062137) * 10).rounded() / 10
            distanceLabel.text = "Distance: \(distanceInMiles) miles"
        }
    }
}
