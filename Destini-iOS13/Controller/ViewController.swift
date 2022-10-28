//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
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
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(sender.currentTitle!)
        updateUI()
    }
    
    //    func updateUI(){
    //        if step + 1 < storyBrain.story.count{
    //            step += 1
    //        } else {step = 0}
    //
    //    }
    //
    func updateUI(){
        storyLabel.text = storyBrain.story[storyBrain.step].story0
        choice1Button.setTitle(storyBrain.story[storyBrain.step].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.story[storyBrain.step].choice2, for: .normal)
        
    }
}

