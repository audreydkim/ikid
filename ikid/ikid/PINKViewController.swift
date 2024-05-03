//
//  PINKViewController.swift
//  ikid
//
//  Created by Audrey Kim on 5/2/24.
//

import UIKit

class PINKViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        joke.text = baby[0]

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    let baby : [String] = ["What is worse than 3 dead babies in a tree?", "1 dead baby in 3 trees."]
    var counter : Int = 0
    
    @IBOutlet weak var joke: UILabel!
    @IBAction func next(_ sender: Any) {
        if (counter >= 1) {
            counter = -1
        }
        counter += 1
        joke.text = baby[counter]
    }
    
}
