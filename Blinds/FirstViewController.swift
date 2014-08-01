//
//  FirstViewController.swift
//  Blinds
//
//  Created by Josh on 7/29/14.
//  Copyright (c) 2014 joshmeek. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet var playersField: UITextField!
    @IBOutlet var positionField: UITextField!
    @IBOutlet var avgRoundsField: UITextField!
    var calculations: Calculations = Calculations()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateTapped() {
        calculations.addPlayers(10)
        calculations.addPosition(4)
    }
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder();
        return true
    }
    
}

