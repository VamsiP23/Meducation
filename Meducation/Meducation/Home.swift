//
//  Home.swift
//  Meducation
//
//  Created by Vamsi Putti on 4/6/22.
//

import UIKit

class Home: UIViewController{
    
    @IBOutlet var logOut: UIButton!
    @IBOutlet var welcome: UILabel!
    @IBOutlet var wordleWins: UILabel!
    @IBOutlet var triviaScore: UILabel!
    let defaults = UserDefaults.standard
    var username = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //this part now works
        welcome.font = UIFont(name: "Quicksand", size: 50)
        wordleWins.font = UIFont(name: "Quicksand", size: 30)
        triviaScore.font = UIFont(name: "Quicksand", size: 30)
        triviaScore.numberOfLines = 2
        triviaScore.adjustsFontSizeToFitWidth = true
        let tabbar = tabBarController as! Tab
        username = tabbar.username
        if(username != ""){
            welcome.text = "Welcome \(username)!"
            wordleWins.text = "Wordle Wins: \(defaults.string(forKey: "\(username) Wins")!)"
            triviaScore.text = "Trivia High Score: \(defaults.string(forKey: "\(username) High Score")!)"
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if(username != ""){
            welcome.text = "Welcome \(username)! \nWordle Wins: \(defaults.string(forKey: "\(username) Wins")!) \nTrivia High Score: \(defaults.string(forKey: "\(username) High Score")!)"
        }
    }
    
    @IBAction func logOut(_ sender: UIButton) {
        performSegue(withIdentifier: "logout", sender: nil)
    }
}
