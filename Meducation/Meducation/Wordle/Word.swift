//
//  Word.swift
//  Wordle
//
//  Created by Putti, Sri Vamsi K on 3/24/22.
//

import Foundation

class Word {
    
    var word : String
    var letters : [Letter] = []
    static var arrayOfStrings : [String]?
    static var words : [String] = []
    static var correct : String = ""
    static var alpha : [String : Int] = ["a" : 0, "b" : 0,"c" : 0,"d" : 0,"e" : 0,"f" : 0,"g" : 0,"h" : 0,"i" : 0,"j" : 0,"k" : 0,"l" : 0,"m" : 0,"n" : 0,"o" : 0,"p" : 0,"q" : 0,"r" : 0,"s" : 0,"t" : 0,"u" : 0,"v" : 0,"w" : 0,"x" : 0,"y" : 0,"z" : 0]
    static var guessAlpha : [String : Int] = ["a" : 0, "b" : 0,"c" : 0,"d" : 0,"e" : 0,"f" : 0,"g" : 0,"h" : 0,"i" : 0,"j" : 0,"k" : 0,"l" : 0,"m" : 0,"n" : 0,"o" : 0,"p" : 0,"q" : 0,"r" : 0,"s" : 0,"t" : 0,"u" : 0,"v" : 0,"w" : 0,"x" : 0,"y" : 0,"z" : 0]
    init(_ word : String) {
        self.word = word.uppercased()
        createLetters()
        setTypes()
    }
    
    static func startGame() {
        readFile()
        correct = words.randomElement()!
    }
    
    func getStringLetters() -> [String] {
        var strings : [String] = []
        for char in word {
            strings.append(String(char))
        }
        return strings
    }
    
    func appearOnce(le : Letter) -> Bool {
        var x = 0
        for letter in letters {
            if le.letter.elementsEqual(letter.letter) {
                x+=1
            }
        }
        return x <= 1
    }

    
    
    func createLetters() {
        
        for char in word {
            letters.append(Letter(char))
        }
    }
    
    func getLetters() -> [Letter] {
        return letters
    }
    
    func setTypes() {
        var x = 0
        for letter in Word.correct{
            Word.alpha[String(letter).lowercased()]! += 1
        }
        for letter in letters{
            Word.guessAlpha[letter.letter.lowercased()]! += 1
        }
        for letter in letters {
            let curr = letter.letter
            print(Word.guessAlpha[curr.lowercased()]!)
            print(Word.alpha[curr.lowercased()]!)
            if Word.correct.contains(Character(curr)) && Word.guessAlpha[curr.lowercased()]! <= Word.alpha[curr.lowercased()]! {
                letter.setType(input: .yellow)
            }
            if Word.correct[Word.correct.index(Word.correct.startIndex, offsetBy: x)] == Character(curr) {
                letter.setType(input: .green)
            }
            x+=1
        }
        for letter in Word.correct{
            Word.alpha[String(letter).lowercased()]! -= 1
        }
        for letter in letters{
            Word.guessAlpha[letter.letter.lowercased()]! -= 1
        }
    }
    
     static func readFile() {
        do {
            
            if let path = Bundle.main.path(forResource: "dictionary", ofType: "txt"){
                let data = try String(contentsOfFile:path, encoding: String.Encoding.utf8).uppercased()
                arrayOfStrings = data.components(separatedBy: "\n")
            }
            
        } catch _ as NSError {
            print("no")
        }
        for s in arrayOfStrings!{
            if(s.count == 5){
                words.append(s)}
        }
    }
}
