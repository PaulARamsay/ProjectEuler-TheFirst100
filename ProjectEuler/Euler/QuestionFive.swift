//
//  QuestionFive.swift
//  ProjectEuler
//
//  Created by Paul Ramsay on 28/06/2020.
//  Copyright © 2020 Paul Ramsay. All rights reserved.
//

import Foundation

class QuestionFive: Problem {
    
    let multiple = 100
    
    override func startProblem() {
        var result = 0
        var multipleOfTwenty = 0
        while result == 0 {
            multipleOfTwenty += multiple
            result = self.givenInt(multipleOfTwenty)
        }
        self.result(String(describing: result))
    }
    
    func givenInt(_ multipleOfTwenty: Int) -> Int {
        var result = 0
        for number in 1...multiple {
            if multipleOfTwenty % number != 0 {
                return 0
            }
            result = multipleOfTwenty
        }
        return result
    }
}
