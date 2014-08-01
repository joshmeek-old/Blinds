//
//  Calculations.swift
//  Blinds
//
//  Created by Josh on 7/31/14.
//  Copyright (c) 2014 joshmeek. All rights reserved.
//

import UIKit

var calculations: Calculations = Calculations()

struct player {
    var user = false
    var bigBlind = false
    var smallBlind = false
}

class Calculations {
   
    var chips: Int = 0;
    var players = [player]()
    var position: Int = 0
    var avgHands: Int = 0
    
    func addInfo(_chips: Int, amountOfPlayers: Int, _position: Int, _avgHands: Int) {
        for index in 1...amountOfPlayers {
            if index == position {
                players.append(player(user: true, bigBlind: false, smallBlind: false))
            }
            else if index == 2 {
                players.append(player(user: false, bigBlind: false, smallBlind: true))
            }
            else if index == 3 {
                players.append(player(user: false, bigBlind: true, smallBlind: false))
            }
            else {
                players.append(player(user: false, bigBlind: false, smallBlind: false))
            }
        }

        chips = _chips
        position = _position
        avgHands = _avgHands
        
        /*println(chips)
        println(players)
        println(position)
        println(avgHands)*/
    }
    
    func updateRounds(_roundsList: [(round)]) {
        //roundsList = _roundsList
    }
    
    func calculate() {
        println(rounds.roundsList[0].bigBlind)
        /*while chips >= 0 {
            for var round = 0; round <= rounds.roundsList.count; round++ {
                println(round)
            }
        }*/
    }
    
}
