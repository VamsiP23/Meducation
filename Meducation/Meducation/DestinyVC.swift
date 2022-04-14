import UIKit

class DestinyVC: UIViewController {
    
    var game = Destiny()
    var message = " "
    var choice1b = " "
    var choice2b = " "
    @IBOutlet var currScenario: UILabel!
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    var username = ""

    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabbar = tabBarController as! Tab
        username = tabbar.username
        // Do any additional setup after loading the view.
      //  currScenario.adjustsFontSizeToFitWidth = true
        message = game.getTitle()
        choice1b = game.getChoice1()
        choice2b = game.getChoice2()
        currScenario.text = game.getTitle()
        button1.setTitle(choice1b, for: .normal)
        button2.setTitle(choice2b, for: .normal)
    }
        
    @IBAction func option1(_ sender: UIButton) {
        if(sender == button1){
            game.currentStory = game.stories[game.currentStory].choice1index
            update()
        }
    }
    
    @IBAction func option2(_ sender: UIButton) {
        if(sender == button2){
            game.currentStory = game.stories[game.currentStory].choice2index
            update()
        }
    }
    
    func update(){
        currScenario.text = game.getTitle()
        button1.setTitle(game.getChoice1(), for: .normal)
        button2.setTitle(game.getChoice2(), for: .normal)
    }
}
