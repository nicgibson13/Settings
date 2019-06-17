//
//  Setting.swift
//  Settings
//
//  Created by Nic Gibson on 6/17/19.
//  Copyright © 2019 Nic Gibson. All rights reserved.
//

import UIKit

class Setting {
    let name: String
    let icon: UIImage
    var isOn: Bool
    
    init(name: String, icon: UIImage, isOn: Bool) {
        self.name = name
        self.icon = icon
        self.isOn = isOn
    }
}
