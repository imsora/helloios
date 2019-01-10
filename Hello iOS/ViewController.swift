//
//  ViewController.swift
//  Hello iOS
//
//  Created by iGuest on 1/9/19.
//  Copyright © 2019 Sam Zeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var choice = 0;
    let strings = ["Cougars suck!", "Go Dawgs!", "Go Seahawks!"]
    override func viewDidLoad() {
        super.viewDidLoad()
        text.textAlignment = NSTextAlignment.center
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var text: UITextView!
    
    @IBAction func changeText(_ sender: UIButton) {
        var rand = Int.random(in: 0 ..< 3)
        while rand == choice {
            rand = Int.random(in: 0 ..< 3)
        }
        text.text = strings[rand]
        choice = rand
    }
}

