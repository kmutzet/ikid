//
//  GoodController.swift
//  iKid
//
//  Created by Kate Muret on 4/29/24.
//

import UIKit

class GoodController: UIViewController {
    @IBOutlet weak var jokeLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    let joke = ["There are 2 dogs, one says to the other:", "im sad, tell me a joke?", "Ok, knock kno-", "Then they both started barking."]
    var currJoke = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showJoke()
    }
    
    @IBAction func toggleJoke() {
        if currJoke < joke.count - 1 {
            currJoke += 1
            UIView.transition(with: jokeLabel, duration: 0.5, options: .transitionFlipFromRight, animations: {
                self.showJoke()
            }, completion: nil)
        } else {
            currJoke = 0
            UIView.transition(with: jokeLabel, duration: 0.5, options: .transitionFlipFromLeft, animations: {
                self.showJoke()
            }, completion: nil)
        }
    }
    
    func showJoke() {
        jokeLabel.text = joke[currJoke]
        updateButton()
    }
    
    func updateButton() {
        if currJoke < joke.count - 1 {
            button.setTitle("Next", for: .normal)
        } else {
            button.setTitle("Back", for: .normal)
        }
    }
}

