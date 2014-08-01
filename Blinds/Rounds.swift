//
//  Handler.swift
//  Blinds
//
//  Created by Josh on 7/30/14.
//  Copyright (c) 2014 joshmeek. All rights reserved.
//

import UIKit

var rounds: Rounds = Rounds()

struct round {
    var smallBlind: String = ""
    var bigBlind: String = ""
}

class Rounds: NSObject {
    
    var roundsList = [round]()
    var numRounds = 0
    
    func addRound(smallBlind: String, bigBlind: String) {
        roundsList.append(round(smallBlind: smallBlind, bigBlind: bigBlind))
        numRounds++
    }
    
}
