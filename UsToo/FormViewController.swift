//
//  FormViewController.swift
//  UsToo
//
//  Created by Shantini Vyas on 10/21/17.
//  Copyright © 2017 Shantini Vyas. All rights reserved.
//

import UIKit
import CoreData


class FormViewController: UITableViewController, TypeViewControllerDelegate {

    
    let managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any? ) {
        
        if segue.identifier == "TypePopupSegue"{
            let navigationController = segue.destination as! UINavigationController
            let controller = navigationController.topViewController as! TypeViewController
            controller.delegate = self
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func updateType(_ by: UITableViewController, assaultList: [String]) {
        dismiss(animated: true, completion: nil)
        
        let item = NSEntityDescription.insertNewObject(forEntityName: "Entity", into: managedObjectContext) as! Entity
    
            item.type = assaultList
        
        }
    
}
