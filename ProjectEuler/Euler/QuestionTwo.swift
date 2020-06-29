//
//  QuestionTwo.swift
//  ProjectEuler
//
//  Created by Paul Ramsay on 28/06/2020.
//  Copyright © 2020 Paul Ramsay. All rights reserved.
//

import Foundation

class QuestionTwo: Problem {
    
    let maxCount = 4000000
    
    override func startProblem() {
        var fib = [Int]()
        var a = 1
        var b = 1
        while a < maxCount && b < maxCount {
            a = b+a //2
            fib.append(a)
            b = a+b //3
            fib.append(b)
        }
        
        var total = 0
        fib.forEach {
            if $0 < maxCount && self.sumIsEqual($0) {
                total += $0
            }
        }
        self.result(String(describing: total))
    }
    
    func sumIsEqual(_ number: Int) -> Bool {
        return number.isMultiple(of: 2)
    }
}
