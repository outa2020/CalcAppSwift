//
//  VC.swift
//  Calculator App
//
//  Created by macbook on 2018-02-18.
//  Copyright © 2018 mohamed. All rights reserved.
//

import UIKit
class VC : UIViewController {
    override var preferredStatusBarStyle: UIStatusBarStyle { return .lightContent }
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func buttonsClick(_ sender: myClassButton) {
        
        //print(sender.tag)
        //resultLabel.text = ""
        if resultLabel.text == "0" {
                    resultLabel.text =  String(sender.tag)
            
        }else {
                    resultLabel.text = resultLabel.text! +  String(sender.tag)
        }
        
        
    }
    
    @IBAction func acButton(_ sender: Any) {
        resultLabel.text = "0"
    }
    
    @IBAction func minusPlusButton(_ sender: Any) {
        resultLabel.text = String(Double(resultLabel.text!)! * -1)
    }
    @IBAction func hundredPercentButton(_ sender: Any) {
        resultLabel.text = String(Double(resultLabel.text!)! * 0.01)
    }
    
    @IBAction func ptButton(_ sender: Any) {
        if !resultLabel.text!.contains(".") {
            resultLabel.text = resultLabel.text! + "."        }
    }
    let Brain : brainCalculator = brainCalculator()
    
    @IBAction func operationsButton(_ sender: UIButton) {
       
        
        Brain.add(num: Double(resultLabel.text!)!,op: Character(sender.titleLabel!.text!))
        if sender.titleLabel!.text! != "=" {
            resultLabel.text="0"
        } else {
            resultLabel.text  = String(Brain.calculSomme())
            Brain.restartCalc()
        }
    
    }
    
}
