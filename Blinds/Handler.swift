//
//  Handler.swift
//  Blinds
//
//  Created by Josh on 7/30/14.
//  Copyright (c) 2014 joshmeek. All rights reserved.
//

import UIKit

struct round {
    var bigBlind = ""
    var smallBlind = ""
}

class Handler: NSObject {
    
    var numberOfRounds = [round]()
    
    func addRound(bigBlind: String, smallBlind: String) {
        numberOfRounds.append(round(bigBlind: bigBlind, smallBlind: smallBlind))
    }
    
    func getNumberOfRounds() -> Int {
        return numberOfRounds.count
    }
    
    
}
