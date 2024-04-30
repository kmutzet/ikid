//
//  PunController.swift
//  iKid
//
//  Created by Kate Muret on 4/29/24.
//

import UIKit

class PunController: UIViewController {
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var jokeLabel: UILabel!
    
    let joke = ("Two antennas met on a roof, fell in love and got married.", "The ceremony wasn't much, but the reception was excellent")
    var showing = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showJoke()
    }
    
    @IBAction func toggleJoke() {
        if showing {
            UIView.transition(with: jokeLabel, duration: 0.75, options: .transitionFlipFromRight, animations: {
                self.showJoke()
            }, completion: nil)
        } else {
            UIView.transition(with: jokeLabel, duration: 0.75, options: .transitionFlipFromLeft, animations: {
                self.displayThePunchline()
            }, completion: nil)
        }
        showing.toggle()
    }
    
    func showJoke() {
        jokeLabel.text = joke.0
        button.setTitle("Next", for: .normal)
    }
    
    func displayThePunchline() {
        jokeLabel.text = joke.1
        button.setTitle("Back", for: .normal)
    }
}

