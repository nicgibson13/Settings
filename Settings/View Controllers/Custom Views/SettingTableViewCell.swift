//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Nic Gibson on 6/17/19.
//  Copyright © 2019 Nic Gibson. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {
    
    @IBOutlet weak var settingSwitch: UISwitch!
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingImageView: UIImageView!
    func updateViews(with setting: Setting) {
        settingImageView.image = setting.icon
        settingNameLabel.text = setting.name
        settingSwitch.isOn = setting.isOn
        
        
        self.backgroundColor = settingSwitch.isOn ? .lightGray : .white
    }

}
