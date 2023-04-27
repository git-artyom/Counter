//
//  ViewController.swift
//  Counter
//
//  Created by Артем Чебатуров on 26.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    
    var counter = 0   //creating counter variable and setting its value to 0
    
    @IBAction func basicCounterButton(_ sender: Any) {
        counter += 1                        //changing counter's value on +1 on every tap on a button
        counterLabel.text = "значение счетчика: \(String(counter))" // displaying on screen text and value of a counter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

}

