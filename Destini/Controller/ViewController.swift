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
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func optionPressed(_ sender: UIButton) {
        storyBrain.getNextStory(userOption: sender.currentTitle!)
        updateUI()
    }
    
    private func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getOption1(), for: .normal)
        choice2Button.setTitle(storyBrain.getOption2(), for: .normal)
    }
}

