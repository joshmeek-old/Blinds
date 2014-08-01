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
   
    var chips: Float = 0.0
    var players = [player]()
    var position: Int = 0
    var avgHands: Int = 0
    var amountOfPlayers: Int = 0
    var totalHands: Int = 0
    
    func addInfo(_chips: Int, _amountOfPlayers: Int, _position: Int, _avgHands: Int) {
        for index in 1..._amountOfPlayers {
            if index == _position {
                if index == 2 {
                   players.append(player(user: true, bigBlind: false, smallBlind: true))
                }
                else if index == 3 {
                   players.append(player(user: true, bigBlind: true, smallBlind: false))
                }
                else {
                   players.append(player(user: true, bigBlind: false, smallBlind: false))
                }
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

        totalHands = 0
        
        amountOfPlayers = _amountOfPlayers
        chips = Float(_chips)
        position = _position
        avgHands = _avgHands
    }
    
    func calculate() {
        while chips >= 0 {
            for var round = 0; round < rounds.roundsList.count; round++ {
                for var hand = 1; hand <= avgHands; hand++ {
                    for var playerCount = 0; playerCount < amountOfPlayers; playerCount++ {
                        if players[playerCount].user == true {
                            if players[playerCount].bigBlind == true {
                                chips = chips - (rounds.roundsList[round].bigBlind as NSString).floatValue
                            }
                            else if players[playerCount].smallBlind == true {
                                chips = chips - (rounds.roundsList[round].smallBlind as NSString).floatValue
                            }
                        }
                        if players[playerCount].bigBlind == true {
                            players[playerCount].bigBlind = false
                            if playerCount == amountOfPlayers - 1 {
                                players[0].bigBlind = true
                                break;
                            }
                            else if playerCount == 0 {
                                players[playerCount + 1].bigBlind = true
                                playerCount = 2
                            }
                            else {
                                players[playerCount + 1].bigBlind = true
                                break;
                            }
                        }
                        else if players[playerCount].smallBlind == true {
                            players[playerCount].smallBlind = false
                            if playerCount == amountOfPlayers - 1 {
                                players[0].smallBlind = true
                            }
                            else {
                                players[playerCount + 1].smallBlind = true
                            }
                        }
                    }
                    totalHands++
                    if chips <= 0 {
                        break
                    }
                }
                if chips <= 0 {
                    break
                }
            }
        }
    }
    
}
