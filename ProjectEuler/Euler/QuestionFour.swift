//
//  QuestionFour.swift
//  ProjectEuler
//
//  Created by Paul Ramsay on 28/06/2020.
//  Copyright © 2020 Paul Ramsay. All rights reserved.
//

import Foundation

class QuestionFour: Problem {
    
    override func startProblem() {
        var highest = 0
        for position in 100 ..< 999 {
            for secondPosition in 100 ..< 999 {
                let result = position*secondPosition
                if checkIsPalindrome(number: result), result > highest {
                    highest = result
                }
            }
        }
        self.result(String(describing: highest))
    }
    
    //12345
    func checkIsPalindrome(number: Int) -> Bool {
        let array = Array(String(describing: number))
        let arrayReversed = Array(self.reverseNumber(number))
        for position in 0..<array.count {
            if array[position] != arrayReversed[position] {
                return false
            }
        }

        return true
    }
    
    func reverseNumber(_ number: Int) -> String {
        return String(String(describing: number).reversed())
    }
}
