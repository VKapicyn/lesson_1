//
//  CalcController.swift
//  lesson_1
//
//  Created by Владислав Капицын on 16.02.2021.
//
import UIKit

class CalcController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let results : Double =  CalcSinglton.shared.calc?.result ?? 0
        self.label1.text = String(results)
    }
}
