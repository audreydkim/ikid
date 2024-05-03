//
//  YELLOWViewController.swift
//  ikid
//
//  Created by Audrey Kim on 5/2/24.
//

import UIKit

class YELLOWViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        joke.text = nonbin[0]
        // Do any additional setup after loading the view.
    }
    
    let nonbin : [String] = ["What does a non-binary samurai do to its enemies?", "They slash Them."]
    var counter : Int = 0
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBOutlet weak var joke: UILabel!
    
    @IBAction func next(_ sender: Any) {
        if (counter >= 1) {
            counter = -1
        }
        counter += 1
        joke.text = nonbin[counter]
    }
    
}
