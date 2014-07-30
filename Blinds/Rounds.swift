//
//  Handler.swift
//  Blinds
//
//  Created by Josh on 7/30/14.
//  Copyright (c) 2014 joshmeek. All rights reserved.
//

import UIKit

struct round {
    var smallBlind = ""
    var bigBlind = ""
}

class Rounds: NSObject {
    
    var roundsList = [round]()
    
    func addRound(smallBlind: String, bigBlind: String) {
        roundsList.append(round(smallBlind: smallBlind, bigBlind: bigBlind))
    }
    
}
