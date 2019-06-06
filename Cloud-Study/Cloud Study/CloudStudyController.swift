//
//  CloudStudyController.swift
//  Cloud Study
//
//  Created by student on 5/10/17.
//  Copyright © 2017 SJSU. All rights reserved.
//
import UIKit
import Foundation

class CloudStudyController {
    
    private var allDecks: Dictionary<String, Dictionary<String, flashcard>> = [:]
    
    func setNewDeck(key: String) {
        allDecks[key] = deckOfCards
    }
    
    var deckOfCards: Dictionary<String, flashcard> = [:]
    
    struct flashcard {
        var question: String
        var answer: String
    }
}
