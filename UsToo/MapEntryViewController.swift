//
//  MapEntryViewController.swift
//  UsToo
//
//  Created by Shantini Vyas on 10/21/17.
//  Copyright © 2017 Shantini Vyas. All rights reserved.
//

import UIKit

class MapEntryViewController: UIViewController, FormViewControllerDelegate  {

    @IBAction func useCurrent(_ sender: UIButton) {
        
        performSegue(withIdentifier: "DataEntrySegue", sender: self)
        
    }
    
    func finalize(_ by: UITableViewController, willReport: Bool, notes: String, location: String, knowsPerp: Bool, injury: Bool, event_date: Date){
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DataEntrySegue"{
            let navigationController = segue.destination as! UINavigationController
            let controller = navigationController.topViewController as! FormViewControllerDelegate
            controller.delegate = self
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
