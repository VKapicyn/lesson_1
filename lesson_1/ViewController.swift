//
//  ViewController.swift
//  lesson_1
//
//  Created by Владислав Капицын on 16.02.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var InputNumbers: UITextField!
    @IBOutlet weak var label1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func CalcNumbers(_ sender: Any) {
        let arrayOfNumbers : [String]  = self.InputNumbers.text!.components(separatedBy: " ")
        
        var summary : Double = 0
        for i in arrayOfNumbers {
            if (Double(i)==nil) {
                // лень возится с выводом ошибки, поэтому просто игнорируем не числа
                continue
            }
            summary += Double(i)!
        }
        
        CalcSinglton.shared.calc = Calc(result:0)
        CalcSinglton.shared.calc?.result = summary
    }
}

