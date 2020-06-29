//
//  QuestionSix.swift
//  ProjectEuler
//
//  Created by Paul Ramsay on 28/06/2020.
//  Copyright © 2020 Paul Ramsay. All rights reserved.
//

import Foundation

class QuestionSix: Problem {
    
    let squareAmount = 100
    
    override func startProblem() {
        let sumOfSquare = self.getSumOfSquare()
        self.result(String(describing: sumOfSquare))
    }
    
    private func getSumOfSquare() -> Int {
        var sum = 0
        var total = 0
        for number in 0...squareAmount {
            total += number * number
            sum += number
        }
        
        return (sum*sum) - total
    }
}


