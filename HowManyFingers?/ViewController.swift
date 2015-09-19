//
//  ViewController.swift
//  HowManyFingers?
//
//  Created by Mike Pitre on 9/18/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guessField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func submitGuess(sender: AnyObject) {
        
        let fingers = Int(arc4random_uniform(6))
        
        if Int(guessField.text!) == fingers {
            resultLabel.text = "You guessed it! I was holding up \(fingers) fingers!"
        } else {
            resultLabel.text = "Sorry that's wrong. I was holding up \(fingers) fingers."
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

