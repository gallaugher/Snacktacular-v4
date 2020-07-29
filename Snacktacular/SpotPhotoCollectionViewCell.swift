//
//  SpotPhotoCollectionViewCell.swift
//  Snacktacular
//
//  Created by John Gallaugher on 7/27/20.
//  Copyright © 2020 John Gallaugher. All rights reserved.
//

import UIKit
import SDWebImage

class SpotPhotoCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var photoImageView: UIImageView!
    
    var spot: Spot!
    var photo: Photo! {
        didSet {
            photo.loadImage(spot: spot) { (success) in
                if success {
                    self.photoImageView.image = self.photo.image
                } else {
                    print("😡 ERROR: no success in loading photo in SpotPhotoCollectionViewCell")
                }
            }
        }
    }
}
