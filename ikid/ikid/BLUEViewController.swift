//
//  BLUEViewController.swift
//  ikid
//
//  Created by Audrey Kim on 5/2/24.
//

import UIKit

class BLUEViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        joke.text = nocknock[0]
        // Do any additional setup after loading the view.
    }
    var counter : Int = 0
    let nocknock : [String] = ["Nock nock.", "Who's there?", "Yo-deh-lay-hee.", "Yo-deh-lay-hee-WHO!"]

    var jokeCounter : Int = 0
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
        if (counter >= 3) {
            counter = -1
        }
        counter += 1
        joke.text = nocknock[counter]
    }
    
}
