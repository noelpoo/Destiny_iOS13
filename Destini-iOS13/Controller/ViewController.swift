//
//  ViewController.swift
//  Destini-iOS13
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
        
    var storyBrain = storyModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
                
        storyBrain.nextStory(input: sender.currentTitle!)
        updateUI()
        
    }
    
    
    @objc func updateUI() {
        storyLabel.text = storyBrain.stories[storyBrain.storyNum].title
        choice1Button.setTitle(storyBrain.stories[storyBrain.storyNum].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[storyBrain.storyNum].choice2, for: .normal)
        
        
    }




}
