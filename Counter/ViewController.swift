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
    
    
    @IBAction func plusButton(_ sender: Any) {
        counter += 1                        //changing counter's value on +1 on every tap on a button
        counterLabel.text = "значение счетчика: \(String(counter))" // displaying on screen text and value of a counter
        
    }
    
    
    @IBAction func minusButton(_ sender: Any) {
        counter -= 1                        //changing counter's value on -1 on every tap on a button
        if counter <= 0 { //checking for 0 and negative value
            counter = 0 //if value <= 0 set value to 0
        }
        counterLabel.text = "значение счетчика: \(String(counter))" // displaying on screen text and value of a counter
        
    }
    
    @IBAction func setToNilBButton(_ sender: Any) {
        counter = 0  //setting counter to 0
        counterLabel.text = "значение счетчика: \(String(counter))" // displaying on screen text and value of a counter
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

}

