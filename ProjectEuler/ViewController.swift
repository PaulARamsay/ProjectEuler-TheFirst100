//
//  ViewController.swift
//  ProjectEuler
//
//  Created by Paul Ramsay on 28/06/2020.
//  Copyright © 2020 Paul Ramsay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let line = 6
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let problem = self.getProblem(line)
        problem.execute()
    }
    
    private func getProblem(_ int: Int) -> Problem {
        switch int {
        case 2: return QuestionTwo()
        case 4: return QuestionFour()
        case 5: return QuestionFive()
        case 6: return QuestionSix()
        default: return QuestionOne()
        }
    }
}
