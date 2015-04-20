//
//  DataSource.swift
//  ScrollViewKeyboardResize
//
//  Created by Håkon Bogen on 20/02/15.
//  Copyright (c) 2015 haaakon. All rights reserved.
//

import UIKit
import CoreData

class DataSource: NSObject, UITableViewDataSource {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
   
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        configureCell(cell, indexPath: indexPath)
        return cell
    }
    
    func configureCell(cell: UITableViewCell, indexPath: NSIndexPath){
        // do configuration of cells UI
    }
}
