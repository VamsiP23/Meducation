//
//  ScoreViewController.swift
//  Meducation
//
//  Created by Vamsi Putti on 4/11/22.
//

import Foundation
import UIKit

class ScoreViewController : UIViewController {
    var questionsAnsweredCorrectly = 0
    var numQuestions = 0
    var username = ""
    let defaults = UserDefaults.standard
    
    @IBOutlet var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "\(questionsAnsweredCorrectly) out of \(numQuestions)!"
        if(questionsAnsweredCorrectly > defaults.integer(forKey: "\(username) High Score")){
            defaults.set(questionsAnsweredCorrectly, forKey: "\(username) High Score")
        }
        // Do any additional setup after loading the view.
    }
    
}
