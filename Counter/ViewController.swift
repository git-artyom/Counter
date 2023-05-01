//
//  ViewController.swift
//  Counter
//
//  Created by Артем Чебатуров on 26.04.2023.
//

import UIKit
import Foundation


class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel! //counter label
    @IBOutlet weak var textView: UITextView! //text view
    var counter = 0   //creating counter variable and setting its value to 0
    
    
    @IBAction func plusButton(_ sender: Any) { //plus buuton func
        counter += 1                        //changing counter's value on +1 on every tap on a button
        counterLabel.text = "значение счетчика: \(String(counter))" // displaying on screen text and value of a counter
        let todayDate = Date() // creating tofay date by Date() type
        let dateFormat = DateFormatter() // create formatted date via DateFormatter()
        dateFormat.dateStyle = .medium // setting DateFormatter styles
        dateFormat.timeStyle = .short
        let formattedDateTime = dateFormat.string(from: todayDate) // creating const via formated const with value tacked from todayDate : Date()
        textView.text = "\(textView.text!)" + "\n\(formattedDateTime) значение изменено на +1"

    }
    
    
    @IBAction func minusButton(_ sender: Any) { //minus button func
        counter -= 1                        //changing counter's value on -1 on every tap on a button
        let todayDate = Date()
        let dateFormat = DateFormatter()
        dateFormat.dateStyle = .medium
        dateFormat.timeStyle = .short
        let formattedDateTime = dateFormat.string(from: todayDate)
        if counter <= 0 { //checking for 0 and negative value
            counter = 0 //if value <= 0 set value to 0
            textView.text = "\(formattedDateTime) попытка уменьшить значение счётчика ниже 0!"
        }
        counterLabel.text = "значение счетчика: \(String(counter))" // displaying on screen text and value of a counter
        
        textView.text = "\(textView.text!)" + "\n\(formattedDateTime) значение изменено на -1"
        
        
    }
    
    @IBAction func setToNilBButton(_ sender: Any) { //setting to zero button func
        counter = 0  //setting counter to 0
        counterLabel.text = "значение счетчика: \(String(counter))" // displaying on screen text and value of a counter
        
        let todayDate = Date()
        let dateFormat = DateFormatter()
        dateFormat.dateStyle = .medium
        dateFormat.timeStyle = .short
        let formattedDateTime = dateFormat.string(from: todayDate)
        textView.text = "\(formattedDateTime) значение сброшено до 0"
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

}
