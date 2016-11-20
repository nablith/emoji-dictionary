//
//  DefinitionViewController.swift
//  Emoji Dictionaty
//
//  Created by Richard Ziegler on 11/20/16.
//  Copyright © 2016 Richard Ziegler. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    
    var bigEmoji = "NO EMOJI"
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    emojiLabel.text = bigEmoji
        
        if bigEmoji == "💩" {
            definitionLabel.text = "This is a little poop."
        }
        
        if bigEmoji == "😎" {
            definitionLabel.text = "Cool guy."
        }

        if bigEmoji == "😇" {
            definitionLabel.text = "Halo Top!"
        }
        if bigEmoji == "🐬" {
            definitionLabel.text = "Dolphin!"
        }
        
    }
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
