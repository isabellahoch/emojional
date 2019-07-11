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
    
    let songs = ["🤑":["artist":"G Eazy & Blueface","title":"West Coast", "link":"https://open.spotify.com/track/2O8gSQ9z52tZSLJnuzjkcG"],
                 "🥺":["artist":"XXXTENTACION","title":"SAD!", "link":"https://open.spotify.com/track/3ee8Jmje8o58CHK66QrVC2"],
                 "🤠":["artist":"Lil Nas X","title":"Old Town Road", "link":"https://open.spotify.com/track/53CJANUxooaqGOtdsBTh7O"],
                 "🤪":["artist":"YG, Tyga, Jon Z","title":"Go Loko", "link":"https://open.spotify.com/track/3SZqA7rQvROJsCbUu2v0xa"],
                 "🥴":["artist":"Billie Eilish","title":"my strange addiction", "link":"https://open.spotify.com/track/3Tc57t9l2O8FwQZtQOvPXK"]]
    
    let memes = ["🤑":"pupper.png", "🥺":"pupper.png", "🤠":"pupper.png", "🤪":"pupper.png", "🥴":"pupper.png", ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        
        let randomNumber = Int.random(in: 0 ... (customMessages[emojis[selectedEmotion!]!]!.count-1))
        
        var emojiMessage = customMessages[emojis[selectedEmotion!]!]?[randomNumber]
        
        let emojiSong = songs[selectedEmotion!]!
        
        let songMessage = "keep the vibes going with \(emojiSong["title"]!) by \(emojiSong["artist"]!)"
        
        emojiMessage = "\(emojiMessage!) \n \(songMessage)"
        
        let imgTitle = UIImage(named:memes[selectedEmotion!]!)
        let imgViewTitle = UIImageView(frame: CGRect(x: 10, y: 10, width: 30, height: 30))
        imgViewTitle.image = imgTitle
        
        var alertController = UIAlertController(title: "eMoJiONaL", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        
        alertController.view.addSubview(imgViewTitle)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated:true, completion:nil)

    }


}

