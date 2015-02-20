//
//  FirstViewController.swift
//  ScrollViewKeyboardResize
//
//  Created by Håkon Bogen on 12/02/15.
//  Copyright (c) 2015 haaakon. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let dataSource : DataSource = DataSource()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableView.dataSource = dataSource
        setupKeyboardNotifcationListenerForScrollView(tableView)
    }
    
    deinit {
        removeKeyboardNotificationListeners()
    }

}

