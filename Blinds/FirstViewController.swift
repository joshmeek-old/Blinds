//
//  FirstViewController.swift
//  Blinds
//
//  Created by Josh on 7/29/14.
//  Copyright (c) 2014 joshmeek. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet var chipsField: UITextField!
    @IBOutlet var playersField: UITextField!
    @IBOutlet var positionField: UITextField!
    @IBOutlet var avgRoundsField: UITextField!
    @IBOutlet var totalHandsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateTapped() {
        var chips = Int((chipsField.text as NSString).intValue)
        var numPlayers = Int((playersField.text as NSString).intValue)
        var position = Int((positionField.text as NSString).intValue)
        var avgHands = Int((avgRoundsField.text as NSString).intValue)
        calculations.addInfo(chips, _amountOfPlayers: numPlayers, _position: position, _avgHands: avgHands)
        calculations.calculate()
        totalHandsLabel.text = String("Hands: ~\(calculations.totalHands)")
    }
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder();
        return true
    }

}

