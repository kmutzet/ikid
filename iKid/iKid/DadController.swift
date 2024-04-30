//
//  DadController.swift
//  iKid
//
//  Created by Kate Muret on 4/29/24.
//

import UIKit

class DadController: UIViewController {
    @IBOutlet weak var jokeLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    let joke = [ "I took up origami for a while", "but I gave it up because it was too much paperwork.", "You could say I folded under pressure!"]
    var showing = false
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showJoke()
    }
    
    @IBAction func toggleJoke() {
        if counter < joke.count - 1 {
            counter += 1
            UIView.transition(with: jokeLabel, duration: 0.5, options: .transitionFlipFromRight, animations: {
                self.showJoke()
            }, completion: nil)
        } else {
            counter = 0
            UIView.transition(with: jokeLabel, duration: 0.5, options: .transitionFlipFromLeft, animations: {
                self.showJoke()
            }, completion: nil)
        }
    }
    
    func showJoke() {
        jokeLabel.text = joke[counter]
        updateButton()
    }
    
    func updateButton() {
        if counter < joke.count - 1 {
            button.setTitle("Next", for: .normal)
        } else {
            button.setTitle("Back", for: .normal)
        }
    }
}



