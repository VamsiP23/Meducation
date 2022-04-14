import UIKit

class ChangePassword: UIViewController{
    
    let defaults = UserDefaults.standard
    @IBOutlet var username: UITextField!
    @IBOutlet var newpw: UITextField!
    @IBOutlet var update: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update.titleLabel?.numberOfLines = 1
        update.titleLabel?.adjustsFontSizeToFitWidth = true
    }
    
    @IBAction func updatePassword(_ sender: UIButton) {
        defaults.set(newpw.text!, forKey: "\(username.text!) password")
    }
    
}
