//
//  ViewController.swift
//  Destini
//
//  Created by Hanna Putiprawan on 01/17/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var stories = StoryBrain()
    var destNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        choice1Button.tag = 1
        choice2Button.tag = 2
        
        storyLabel.text = stories.getStory(currentNumber: 0)
        choice1Button.setTitle(stories.showOption1(), for: .normal)
        choice2Button.setTitle(stories.showOption2(), for: .normal)
        
        
    }

    @IBAction func optionPressed(_ sender: UIButton) {
        updateUI(userOption: sender.tag)
    }
    
    private func updateUI(userOption: Int) {
        let dest = stories.getDestination(option: userOption)
        storyLabel.text = stories.getStory(currentNumber: dest)
        choice1Button.setTitle(stories.showOption1(), for: .normal)
        choice2Button.setTitle(stories.showOption2(), for: .normal)
    }
}

