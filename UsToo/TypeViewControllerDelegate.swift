//
//  TypeViewControllerDelegate.swift
//  UsToo
//
//  Created by Shantini Vyas on 10/21/17.
//  Copyright © 2017 Shantini Vyas. All rights reserved.
//

import Foundation

import UIKit

protocol TypeViewControllerDelegate: class {
    func updateType(_ by: UITableViewController, assaultList: [String])
}
