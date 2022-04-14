//
//  ViewController.swift
//  Meducation
//
//  Created by Vamsi Putti on 4/5/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tempB: UIButton!
    @IBOutlet var create: UIButton!
    @IBOutlet var forgot: UIButton!
    @IBOutlet var username: UITextField!
    @IBOutlet var password: UITextField!
    let defaults = UserDefaults.standard
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        create.titleLabel?.numberOfLines = 1
        create.titleLabel?.adjustsFontSizeToFitWidth = true
        forgot.titleLabel?.numberOfLines = 1
        forgot.titleLabel?.adjustsFontSizeToFitWidth = true
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
            if(username.text! == defaults.string(forKey: "\(username.text!) username")&&(password.text! == defaults.string(forKey: "\(username.text!) password"))){
                performSegue(withIdentifier: "qwert", sender: nil)
            } else{
                let alert = UIAlertController(title: "Oops", message: "incorrect username or password", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Try Again", style: .cancel, handler: nil))
                self.present(alert, animated: true)
            }
    }
    
    @IBAction func createAccount(_ sender: UIButton) {
        performSegue(withIdentifier: "create", sender: nil)
    }
    
    @IBAction func forgotPassword(_ sender: UIButton) {
        performSegue(withIdentifier: "pass", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "qwert"){
            let vc = segue.destination as? Tab
            print(vc!)
            vc?.username = username.text!
        }
    }
    

}

