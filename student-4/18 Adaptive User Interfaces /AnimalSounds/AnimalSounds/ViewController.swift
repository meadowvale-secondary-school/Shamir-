//
//  ViewController.swift
//  AnimalSounds
//
//  Created by Student on 2020-04-01.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var animalSoundLabel: UILabel!
    
    let meowSound = SimpleSound(named: "meow")
    let woofSound =
        SimpleSound(named: "woof")
    let mooSound =
        SimpleSound(named: "moo")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func catButtonTapped(_ sender: Any){
        animalSoundLabel.text = "Meow!"
        meowSound.play()
    }
    
    @IBAction func dogButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Woof!"
        woofSound.play()
    }
    
    
    @IBAction func cowButtonTapped(_ sender: Any) {
        animalSoundLabel.text = "Moo!"
        mooSound.play()
    }
    
}

