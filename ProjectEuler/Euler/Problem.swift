//
//  Problem.swift
//  ProjectEuler
//
//  Created by Paul Ramsay on 28/06/2020.
//  Copyright © 2020 Paul Ramsay. All rights reserved.
//

import Foundation

class Problem {
        
    func execute() {
        print("You have selected - \(String(describing: self))")
        print("Starting problem solver.............")
        self.startProblem()
    }
    
    func startProblem() {}
    
    func result(_ string: String) {
        print("The result for this problem is: \(string)")
    }
}
