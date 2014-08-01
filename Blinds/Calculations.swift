//
//  Calculations.swift
//  Blinds
//
//  Created by Josh on 7/31/14.
//  Copyright (c) 2014 joshmeek. All rights reserved.
//

import UIKit

class Calculations: NSObject {
   
    var players = [Int]()
    var position: Int = 0
    
    func addPlayers(amountOfPlayers: Int) {
        for index in 1...amountOfPlayers {
            players.append(index)
        }
        
        println(players)
    }
    
    func addPosition(_position: Int) {
        position = _position
        println(position)
    }
}
