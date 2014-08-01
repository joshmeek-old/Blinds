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
    var rounds: Rounds = Rounds()
    
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
        rounds.addRound(smallBlind.text, bigBlind: bigBlind.text)
        smallBlind.text = ""
        bigBlind.text = ""
        roundView.reloadData()
    }
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder();
        return true
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return rounds.roundsList.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "")
        cell.detailTextLabel.font = UIFont.systemFontOfSize(23.0)
        cell.detailTextLabel.textColor = UIColor.blackColor()
        cell.textLabel.text = rounds.roundsList[indexPath.row].smallBlind
        cell.detailTextLabel.text = rounds.roundsList[indexPath.row].bigBlind
        
        return cell
    }
    
    func tableView(tableView: UITableView!, canEditRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!) {
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            rounds.roundsList.removeAtIndex(indexPath.row)
            roundView.reloadData();
        }
    }
    
}

