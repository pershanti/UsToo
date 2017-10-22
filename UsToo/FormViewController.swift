//
//  FormViewController.swift
//  UsToo
//
//  Created by Shantini Vyas on 10/21/17.
//  Copyright © 2017 Shantini Vyas. All rights reserved.
//

import UIKit
import CoreData
import MapKit


class FormViewController: UITableViewController, TypeViewControllerDelegate {

    weak var delegate: FormViewControllerDelegate?
    
    @IBAction func knows(_ sender: UIButton) {
        knowsPerp = true
    }
    
    @IBAction func doesntKnow(_ sender: UIButton) {
        knowsPerp = false
    }
    @IBAction func injureYes(_ sender: UIButton) {
        injury = true
    }
    
    @IBAction func injureNo(_ sender: UIButton) {
        injury  = false
    }
    
    @IBAction func policeYes(_ sender: UIButton) {
        willReport = true
    }
    
    @IBAction func policeNo(_ sender: UIButton) {
        willReport = false
    }
    
    @IBOutlet weak var eventDate: UIDatePicker!
    var willReport: Bool? = false
    var notes: String? = ""
    var location: CLLocation?
    var knowsPerp: Bool? = false
    var injury: Bool? = false
    
    var newEntity: Entity?
    
    
     let managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        
        newEntity?.willReport = self.willReport!
        newEntity?.notes = self.notes!
        newEntity?.date = self.eventDate.date
        newEntity?.knowsPerp = self.knowsPerp!
        newEntity?.location = self.location!
        
        performSegue(withIdentifier: "goToMap", sender: self)
    }
    
    
    @IBAction func cancelPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
   
    
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
        
        newEntity = NSEntityDescription.insertNewObject(forEntityName: "Entity", into: managedObjectContext) as! Entity
        
        for item in assaultList {
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "AssaultType")
            request.predicate = NSPredicate(format: "name CONTAINS[cd] %@", item)
            do{
                let result = try managedObjectContext.fetch(request)
                var myarray: [AssaultType]
                myarray = result as! [AssaultType]
                let item_to_add = myarray[0]
                newEntity?.addToAssault_type(item_to_add)
            }
            catch{
                print("\(error)")
            }
        }
    }
}
