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
    let nocknock : [String] = ["Knock knock.", "Who's there?", "Yo-deh-lay-hee.", "Yo-deh-lay-hee-WHO?"]

    let lobster : [String] = ["What’s the difference between a dirty bus stop and a lobster with breast implants?", "One is a crusty bus station, and the other is a busty crustacean!"]
    var jokeCounter : Int = 0
    

    /*[[]] [0]
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var joke: UILabel!
    
    @IBAction func next(_ sender: Any) {
        if (counter == -1) {
            button.setTitle("Next", for: .normal)
        }
        if (jokeCounter == 0) {
            // nocknock joke
            nockJoke()
        } else {
            crabJoke()
        }
    }
    func nockJoke() {
        if (counter < 3) { // if we are still looking at nock nock joke
            if (counter == 2) {
                button.setTitle("Next Joke", for: .normal)
                jokeCounter = 1
            }
            counter += 1
            joke.text = nocknock[counter]
        }
    }
    func crabJoke() {
        if (counter == 3) {
            counter = 0
            button.setTitle("Next", for: .normal)
            joke.text = lobster[0]
        } else {
            counter += 1
            joke.text = lobster[counter]
            jokeCounter = 0
            button.setTitle("Previous Joke", for: .normal)
            counter = -1
        }

    }
    
}
