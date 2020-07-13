//
//  ViewController.swift
//  201910243 counter demo
//
//  Created by hyu on 10/24/1 R.
//  Copyright © 1 Reiwa hyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var addbutton: UIButton!
    @IBOutlet weak var subtractButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backButton.isHidden = true
    }

    func updateDisplay(){
        display.text = String(format:"%04d",count)
    }
    
    @IBAction func addAction(_ sender: UIButton) {
        count = count + 1
        if(count > 9999){
            count = 0
        }
        updateDisplay()
    }
    @IBAction func subtractAction(_ sender: Any) {
        count = count - 1
        if(count < 0){
            count = 0
        }
        updateDisplay()
    }
    
    @IBAction func clearAction(_ sender: UIButton) {
        count = 0
        updateDisplay()
    }
    
    @IBAction func trap(_ sender: UIButton) {
        display.isHidden = true
        addbutton.isHidden = true
        subtractButton.isHidden = true
        clearButton.isHidden = true
        backButton.isHidden = false
        
    }
        
    @IBAction func back(_ sender: UIButton) {
        display.isHidden = false
        addbutton.isHidden = false
        subtractButton.isHidden = false
        clearButton.isHidden = false
        backButton.isHidden = true
    }
}

