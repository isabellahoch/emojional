//
//  ViewController.swift
//  emojional
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let emojis = ["🤑":"money", "🥺":"sad", "🤠":"yeehaw", "🤪":"goofy", "🥴":"queasy", ]
    
    let customMessages = ["money":["what does this emoji mean I'm confused"],"sad":["sad boi hourz"], "yeehaw":["howdy!", "i got the horses in the back", "haw yee"], "goofy":["sup lol", "flat is short for flatthew"], "queasy":["have a bucket nearby"]]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        
        let randomNumber = Int.random(in: 0 ... (customMessages[emojis[selectedEmotion!]!]!.count-1))
        
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[randomNumber]
        
        var alertController = UIAlertController(title: "eMoJiONaL", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated:true, completion:nil)

    }


}

