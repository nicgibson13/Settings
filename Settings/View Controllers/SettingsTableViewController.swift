//
//  SettingsTableViewController.swift
//  Settings
//
//  Created by Nic Gibson on 6/17/19.
//  Copyright © 2019 Nic Gibson. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return SettingController.sharedInstance.settings.count
    }
   
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingTableViewCell else {return UITableViewCell()}
        
        //Configure the cell
        let setting = SettingController.sharedInstance.settings[indexPath.row]
        cell.updateViews(with: setting)
     return cell
     }
}

