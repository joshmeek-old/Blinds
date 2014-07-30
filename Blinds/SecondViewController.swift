//
//  SecondViewController.swift
//  Blinds
//
//  Created by Josh on 7/29/14.
//  Copyright (c) 2014 joshmeek. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var bigBlind: UITextField!
    @IBOutlet var smallBlind: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addRoundTapped() {
        println("TAPPED!")
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "")
        cell.textLabel.text = "Yes"
        cell.detailTextLabel.text = "No"
        cell.editing = true
        cell.setEditing(true, animated: true)
        //cell
        return cell
    }
    
    func tableView(tableView: UITableView!, canEditRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!) {
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            
            tableView.delete(indexPath)
            
            tableView.reloadData()
            // handle delete (by removing the data from your array and updating the tableview)
        }
    }
    
}

