//
//  TypeViewController.swift
//  UsToo
//
//  Created by Shantini Vyas on 10/21/17.
//  Copyright © 2017 Shantini Vyas. All rights reserved.
//

import UIKit

class TypeViewController: UITableViewController {
    
    weak var delegate: FormViewController?
    
    var picked: [String] = []
    
    var assault_array: [String] = ["Catcalling", "Clothes Torn", "Blocked from Moving", "Groping", "Hit/punched/beaten/choked/bruised", "Kidnapping", "Rape", "Stalking", "Theft", "Threats/Intimidation", "Verbal Abuse", "Violation of mouth/vagina/anus", "Weapon Use"]
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let tapped = self.assault_array[indexPath.row]
        picked.append(tapped)
    }

    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
        delegate?.updateType(self, assaultList: picked)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    

}
