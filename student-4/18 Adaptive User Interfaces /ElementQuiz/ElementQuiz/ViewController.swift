//
//  ViewController.swift
//  ElementQuiz
//
//  Created by Student on 2020-04-01.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    let elementList = ["Carbon", "Gold","Chlorine","Sodium"]
    
    var currentElementIndex = 0
      
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateElement()
    }
    
    func updateElement() {
        answerLabel.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
        
    }

    @IBAction func showAnswer(_ sender: Any) {
        answerLabel.text = elementList[currentElementIndex]
       }
  
    @IBAction func gotoNextElement(_ sender: Any) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count{
            currentElementIndex = 0
        }
        updateElement()
    }
    
}

