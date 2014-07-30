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
    @IBOutlet var roundView: UITableView!
    var handler: Handler = Handler()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addRoundTapped() {
        //println("TAPPED!")
        self.view.endEditing(true)
        handler.addRound(bigBlind.text, smallBlind: smallBlind.text)
        bigBlind.text = ""
        smallBlind.text = ""
        roundView.reloadData()
    }
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!)
    {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool
    {
        textField.resignFirstResponder();
        return true
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return handler.numberOfRounds.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "")
        cell.textLabel.text = handler.numberOfRounds[indexPath.row].bigBlind
        cell.detailTextLabel.text = handler.numberOfRounds[indexPath.row].smallBlind
        
        return cell
    }
    
    func tableView(tableView: UITableView!, canEditRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!) {
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            handler.numberOfRounds.removeAtIndex(indexPath.row)
            roundView.reloadData();
        }
    }
    
}

