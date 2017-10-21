//
//  FormViewControllerDelegate.swift
//  UsToo
//
//  Created by Shantini Vyas on 10/21/17.
//  Copyright © 2017 Shantini Vyas. All rights reserved.
//

import Foundation
import UIKit

protocol FormViewControllerDelegate: class {
    func finalize(_ by: UITableViewController, willReport: Bool?, notes: String?, location: String?, knowsPerp: Bool?, injury: Bool?, event_date: Date?)
}

