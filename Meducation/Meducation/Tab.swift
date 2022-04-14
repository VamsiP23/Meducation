//

//  Meducation
//
//  Created by Vamsi Putti on 4/7/22.
//

import UIKit

class Tab: UITabBarController{
    
    var username = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let vc = segue.destination as? Home
            print(vc!)
            vc?.username = self.username
    }
}
