//
//  ViewController.swift
//  Lesson1
//
//  Created by Мухаммад Ахмадов on 09.05.2022.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0 {
        didSet{
            flipCountLabel.text = "Клики: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    var emojiChoices = ["👻","🎃","👻","🎃"]
    @IBOutlet var cardButtons: [UIButton]!
    

    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("Нет!!!")
        }
    }
     
    func flipCard(withEmoji emoji: String, on button: UIButton){
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }

}

