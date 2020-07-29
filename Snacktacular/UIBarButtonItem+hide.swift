//
//  UIBarButtonItem+hide.swift
//  Snacktacular
//
//  Created by John Gallaugher on 7/18/20.
//  Copyright © 2020 John Gallaugher. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    func hide() {
        self.isEnabled = false
        self.tintColor = .clear
    }
}
