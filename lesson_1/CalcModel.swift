//
//  CalcModel.swift
//  lesson_1
//
//  Created by Владислав Капицын on 16.02.2021.
//

import Foundation

class Calc {
    var result: Double
    
    init(result: Double) {
        self.result = result
    }
}

class CalcSinglton {
    static let shared = CalcSinglton()
    private init() {}
    
    var calc: Calc? = nil
}
