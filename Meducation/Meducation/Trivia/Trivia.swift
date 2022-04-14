//
//  Trivia.swift
//  Trivia
//
//  Created by Putti, Sri Vamsi K on 2/7/22.
//

import Foundation
// Trivia(q: "According to the BBPA, what is the most common pub name in the UK?", correct: "Red Lion", incorrect: ["Royal Oak", "White Hart", "King\'s Head"]),
class Trivia {
    
    var q : String
    var correct : String
    var incorrect : [String]

    
    init(q : String, correct : String, incorrect : [String]) {
        self.q = q
        self.correct = correct
        self.incorrect = incorrect
    }
    
    func getChoices() -> [String] {
        var choices : [String] = [correct, incorrect[0], incorrect[1], incorrect[2]]
        choices.shuffle()
        return choices
    }
    
    
    
}
