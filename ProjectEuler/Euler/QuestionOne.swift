//
//  QuestionOne.swift
//  ProjectEuler
//
//  Created by Paul Ramsay on 28/06/2020.
//  Copyright © 2020 Paul Ramsay. All rights reserved.
//

import Foundation

class QuestionOne: Problem {
    
    let maxCount = 1000
    
    override func startProblem() {
        var array = [Int]()
        for index in 0..<maxCount {
            if index % 5 == 0 || index % 3 == 0 {
                array.append(index)
            }
        }
        self.result(String(describing:array.reduce(0, +)))
    }
}
