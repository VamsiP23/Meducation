//
//  ViewController.swift
//  Wordle
//
//  Created by Putti, Sri Vamsi K on 3/24/22.
//

import UIKit

class WordleVC: UIViewController {


    let defaults = UserDefaults.standard
    @IBOutlet var one: [UILabel]!
    @IBOutlet var field: WordleInput!
    var round = 0
    var username = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tabbar = tabBarController as! Tab
        username = tabbar.username
        setScreen()
        resetGame()
    }

    @IBAction func wordEntered(_ sender: UITextField) {
        if(field.text?.count != 5) {
            field.shake()
            return
        }
        if(!Word.words.contains(field.text!.uppercased())) {
            field.shake()
            return
        }
        let input : Word = Word(field.text!)
        setRow(input)
    }

    
    func setRow(_ word : Word) {
        let letters = word.getLetters()
        var currRowLetters : [String] = []
        for letter in letters {
            currRowLetters.append(letter.letter)
            if currRowLetters.firstIndex(of: letter.letter) != currRowLetters.lastIndex(of: letter.letter) &&  word.appearOnce(le: letter) {
                letter.setType(input: .black)
            }
            if letter.type == .black {
                
                one[round].text = letter.getLetter()
                one[round].backgroundColor = .gray
                one[round].textColor = .black
                one[round].font = UIFont(name: "Quicksand-Regular", size: 25)!
                round+=1
            } else if letter.type == .yellow {
                one[round].text = letter.getLetter()
                one[round].textColor = .black
                one[round].backgroundColor = .yellow
                one[round].font = UIFont(name: "Quicksand-Regular", size: 25)!
                round+=1
            } else {
                one[round].text = letter.getLetter()
                one[round].textColor = .black
                one[round].backgroundColor = .green
                one[round].font = UIFont(name: "Quicksand-Bold", size: 25)!
                round+=1
            }
        }
        if(word.word == Word.correct) {
            winGame()
        }
        field.text = ""
        field.placeholder = "Enter Word"
        if(round >= 29) {
            finishGame()
        }
        
    }
    
    func finishGame() {
        let dialogMessage = UIAlertController(title: "Maybe next time!", message: "The correct word was \(Word.correct)", preferredStyle: .alert)
        let ok = UIAlertAction(title: "Play Again", style: .default, handler: { (action) -> Void in
            self.resetGame()
        });
        dialogMessage.addAction(ok)
        self.present(dialogMessage, animated: true, completion: nil)
    }
    
    func resetGame() {
        for label in one {
            label.text = ""
            label.backgroundColor = UIColor(red: 201, green: 113, blue: 117, alpha: 0.5)
        }
        round = 0
        Word.startGame()
    }
    
    func winGame() {
        defaults.set(defaults.integer(forKey: "\(username) Wins") + 1, forKey: "\(username) Wins")
        let dialogMessage = UIAlertController(title: "CONGRATS", message: "YOU GOT THE CORRECT WORD!", preferredStyle: .alert)
        let ok = UIAlertAction(title: "Play Again", style: .default, handler: { (action) -> Void in
            self.resetGame()
        });
        dialogMessage.addAction(ok)
        self.present(dialogMessage, animated: true, completion: nil)
    }
   
    func setScreen() {
        for label in one {
            label.layer.masksToBounds = true
            label.layer.cornerRadius = 5
            
        }
    }
    
    
    
    
}
