//
//  Question.swift
//  Quiz Master
//
//  Created by Arshem Web Solutions www.arshem.com
//  Copyright © 2017 Arshem Web Solutions. All rights reserved.
//

import Foundation

class Question {
    let questionText : String
    let answer : Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}
