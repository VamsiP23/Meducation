//
//  CreateAccount.swift
//  Meducation
//
//  Created by Vamsi Putti on 4/6/22.
//

import UIKit

class CreateAccount: UIViewController{
    
    @IBOutlet var username: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var svae: UIButton!
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func update(_ sender: UIButton) {
        defaults.set(username.text, forKey: "\(username.text!) username")
        defaults.set(password.text, forKey: "\(username.text!) password")
        defaults.set(0, forKey: "\(username.text!) Wins")
        defaults.set(0, forKey: "\(username.text!) High Score")
        performSegue(withIdentifier: "update", sender: nil)
    }
}
