//
//  Letter.swift
//  Wordle
//
//  Created by Putti, Sri Vamsi K on 3/24/22.
//

import Foundation

class Letter {
    var letter : String
    var type  : LetterType = .black
    
    init(_ let1 : Character) {
        letter = String(let1)
    }
    
    func setType(input : LetterType) {
        self.type = input        
    }
    
    func getLetter() -> String {
        return letter
    }
    
    
}

enum LetterType {
    case green
    case yellow
    case black
}

